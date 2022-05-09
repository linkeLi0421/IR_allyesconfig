; ModuleID = '/llk/IR_all_yes/sound/soc/sti/uniperif_player.c_pt.bc'
source_filename = "../sound/soc/sti/uniperif_player.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uni_player_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_uni_player_resume\09\09\09\09"
module asm "\09.long\09__crc_uni_player_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_player_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_player_resume\22\09\09\09\09\09"
module asm "__kstrtabns_uni_player_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+uni_player_init\22, \22a\22\09"
module asm "\09.weak\09__crc_uni_player_init\09\09\09\09"
module asm "\09.long\09__crc_uni_player_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_player_init:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_player_init\22\09\09\09\09\09"
module asm "__kstrtabns_uni_player_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.sti_uniperiph_data = type { ptr, ptr, %struct.sti_uniperiph_dai }
%struct.sti_uniperiph_dai = type { i32, ptr, %struct.snd_dmaengine_dai_dma_data }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.76, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.76 = type { %struct.anon.79, [40 x i8] }
%struct.anon.79 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }

@uni_player_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Failed to select freq synth clock\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uni_player_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/sti/uniperif_player.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uni_player_resume._entry_ptr = internal global ptr @uni_player_resume._entry, section ".printk_index", align 4
@__kstrtab_uni_player_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_player_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_player_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_player_resume to i32), ptr @__kstrtab_uni_player_resume, ptr @__kstrtabns_uni_player_resume }, section "___ksymtab_gpl+uni_player_resume", align 4
@uni_player_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @uni_player_set_sysclk, ptr null, ptr null, ptr null, ptr @sti_uniperiph_dai_set_fmt, ptr null, ptr @sti_uniperiph_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uni_player_startup, ptr @uni_player_shutdown, ptr @sti_uniperiph_dai_hw_params, ptr null, ptr @uni_player_prepare, ptr @uni_player_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@uni_player_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1061, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to parse DeviceTree\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uni_player_init\00", [16 x i8] zeroinitializer }, align 32
@uni_player_init._entry_ptr = internal global ptr @uni_player_init._entry, section ".printk_index", align 4
@uni_tdm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 32, i32 1048576, i32 128, i32 262144, i32 2, i32 10, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uni_player_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 192000, i32 2, i32 8, i32 1048576, i32 128, i32 262144, i32 2, i32 48, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uni_player_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 1077, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@uni_player_init._entry_ptr.9 = internal global ptr @uni_player_init._entry.7, section ".printk_index", align 4
@uni_player_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 1087, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uni_player_init._entry_ptr.11 = internal global ptr @uni_player_init._entry.10, section ".printk_index", align 4
@uni_player_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 1098, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: unable to connect to tdm bus\0A\00", [62 x i8] zeroinitializer }, align 32
@uni_player_init._entry_ptr.14 = internal global ptr @uni_player_init._entry.12, section ".printk_index", align 4
@uni_player_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 1107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@uni_player_init._entry_ptr.17 = internal global ptr @uni_player_init._entry.15, section ".printk_index", align 4
@uni_player_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&player->ctrl_lock\00", [45 x i8] zeroinitializer }, align 32
@uni_player_init.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&player->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_uni_player_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_player_init = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_player_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_player_init to i32), ptr @__kstrtab_uni_player_init, ptr @__kstrtabns_uni_player_init }, section "___ksymtab_gpl+uni_player_init", align 4
@uni_player_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 929, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid player state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uni_player_stop\00", [16 x i8] zeroinitializer }, align 32
@uni_player_stop._entry_ptr = internal global ptr @uni_player_stop._entry, section ".printk_index", align 4
@uni_player_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 758, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid player state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uni_player_prepare\00", [45 x i8] zeroinitializer }, align 32
@uni_player_prepare._entry_ptr = internal global ptr @uni_player_prepare._entry, section ".printk_index", align 4
@uni_player_prepare._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 787, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid trigger limit %d\0A\00", [38 x i8] zeroinitializer }, align 32
@uni_player_prepare._entry_ptr.27 = internal global ptr @uni_player_prepare._entry.25, section ".printk_index", align 4
@uni_player_prepare._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 808, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid player type\0A\00", [43 x i8] zeroinitializer }, align 32
@uni_player_prepare._entry_ptr.30 = internal global ptr @uni_player_prepare._entry.28, section ".printk_index", align 4
@uni_player_prepare._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 848, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"format not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@uni_player_prepare._entry_ptr.33 = internal global ptr @uni_player_prepare._entry.31, section ".printk_index", align 4
@uni_player_prepare_iec958._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 323, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid clk_div %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"uni_player_prepare_iec958\00", [38 x i8] zeroinitializer }, align 32
@uni_player_prepare_iec958._entry_ptr = internal global ptr @uni_player_prepare_iec958._entry, section ".printk_index", align 4
@uni_player_prepare_iec958._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.35, ptr @.str.2, i32 345, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uni_player_prepare_iec958._entry_ptr.37 = internal global ptr @uni_player_prepare_iec958._entry.36, section ".printk_index", align 4
@uni_player_prepare_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 436, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: invalid clk_div\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uni_player_prepare_pcm\00", [41 x i8] zeroinitializer }, align 32
@uni_player_prepare_pcm._entry_ptr = internal global ptr @uni_player_prepare_pcm._entry, section ".printk_index", align 4
@uni_player_prepare_pcm._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 441, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uni_player_prepare_pcm._entry_ptr.41 = internal global ptr @uni_player_prepare_pcm._entry.40, section ".printk_index", align 4
@uni_player_prepare_pcm._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"subframe format not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@uni_player_prepare_pcm._entry_ptr.44 = internal global ptr @uni_player_prepare_pcm._entry.42, section ".printk_index", align 4
@uni_player_prepare_pcm._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.39, ptr @.str.2, i32 479, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uni_player_prepare_pcm._entry_ptr.46 = internal global ptr @uni_player_prepare_pcm._entry.45, section ".printk_index", align 4
@uni_player_prepare_pcm._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.39, ptr @.str.2, i32 492, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid nb of channels\0A\00", [36 x i8] zeroinitializer }, align 32
@uni_player_prepare_pcm._entry_ptr.49 = internal global ptr @uni_player_prepare_pcm._entry.47, section ".printk_index", align 4
@__const.uni_player_prepare_tdm.word_pos = private unnamed_addr constant [4 x i32] [i32 67502082, i32 202246154, i32 336990226, i32 471734298], align 4
@uni_player_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.50, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uni_player_start\00", [47 x i8] zeroinitializer }, align 32
@uni_player_start._entry_ptr = internal global ptr @uni_player_start._entry, section ".printk_index", align 4
@uni_player_start._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 870, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Failed to enable clock\0A\00", [36 x i8] zeroinitializer }, align 32
@uni_player_start._entry_ptr.53 = internal global ptr @uni_player_start._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@uni_player_parse_dt_audio_glue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 1027, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sti-audio-clk-glue syscf not found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"uni_player_parse_dt_audio_glue\00", [33 x i8] zeroinitializer }, align 32
@uni_player_parse_dt_audio_glue._entry_ptr = internal global ptr @uni_player_parse_dt_audio_glue._entry, section ".printk_index", align 4
@uni_player_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 82, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"FIFO underflow error detected\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uni_player_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@uni_player_irq_handler._entry_ptr = internal global ptr @uni_player_irq_handler._entry, section ".printk_index", align 4
@uni_player_irq_handler._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 102, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA error detected\0A\00", [44 x i8] zeroinitializer }, align 32
@uni_player_irq_handler._entry_ptr.61 = internal global ptr @uni_player_irq_handler._entry.59, section ".printk_index", align 4
@uni_player_irq_handler._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unexpected Underflow recovering\0A\00", [63 x i8] zeroinitializer }, align 32
@uni_player_irq_handler._entry_ptr.64 = internal global ptr @uni_player_irq_handler._entry.62, section ".printk_index", align 4
@uni_player_irq_handler.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.65, ptr @.str.58, ptr @.str.2, ptr @.str.66, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_soc_sti\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Underflow recovered (%d LR clocks max)\0A\00", [56 x i8] zeroinitializer }, align 32
@uni_player_irq_handler._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.58, ptr @.str.2, i32 138, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Underflow recovery failed\0A\00", [37 x i8] zeroinitializer }, align 32
@uni_player_irq_handler._entry_ptr.69 = internal global ptr @uni_player_irq_handler._entry.67, section ".printk_index", align 4
@uni_player_iec958_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @uni_player_ctl_iec958_info, ptr @uni_player_ctl_iec958_get, ptr @uni_player_ctl_iec958_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@uni_player_clk_adj_ctl = internal global { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 3, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_sti_clk_adjustment_info, ptr @snd_sti_clk_adjustment_get, ptr @snd_sti_clk_adjustment_put, %union.anon.86 zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IEC958 Playback Default\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"PCM Playback Oversampling Freq. Adjustment\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.81 = internal global [11 x i64] [i64 9, i64 32, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 960, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"uni_player_dai_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1037, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1061, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"uni_tdm_hw\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [28 x i8] c"../sound/soc/sti/uniperif.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1351, i32 53 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"uni_player_pcm_hw\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 35, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1077, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1085, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1097, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1107, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1111, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1112, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 929, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 757, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 786, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 808, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 848, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 322, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 345, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 436, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 441, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 459, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 479, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 492, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 864, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 870, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1024, i32 49 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 1027, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 82, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 102, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 116, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 123, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 138, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [22 x i8] c"uni_player_iec958_ctl\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 615, i32 32 }
@___asan_gen_.286 = private unnamed_addr constant [23 x i8] c"uni_player_clk_adj_ctl\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 674, i32 32 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 617, i32 10 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.293 = private constant [35 x i8] c"../sound/soc/sti/uniperif_player.c\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 676, i32 10 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__ksymtab_uni_player_init, ptr @__ksymtab_uni_player_resume, ptr @uni_player_init._entry, ptr @uni_player_init._entry.10, ptr @uni_player_init._entry.12, ptr @uni_player_init._entry.15, ptr @uni_player_init._entry.7, ptr @uni_player_init._entry_ptr, ptr @uni_player_init._entry_ptr.11, ptr @uni_player_init._entry_ptr.14, ptr @uni_player_init._entry_ptr.17, ptr @uni_player_init._entry_ptr.9, ptr @uni_player_irq_handler._entry, ptr @uni_player_irq_handler._entry.59, ptr @uni_player_irq_handler._entry.62, ptr @uni_player_irq_handler._entry.67, ptr @uni_player_irq_handler._entry_ptr, ptr @uni_player_irq_handler._entry_ptr.61, ptr @uni_player_irq_handler._entry_ptr.64, ptr @uni_player_irq_handler._entry_ptr.69, ptr @uni_player_parse_dt_audio_glue._entry, ptr @uni_player_parse_dt_audio_glue._entry_ptr, ptr @uni_player_prepare._entry, ptr @uni_player_prepare._entry.25, ptr @uni_player_prepare._entry.28, ptr @uni_player_prepare._entry.31, ptr @uni_player_prepare._entry_ptr, ptr @uni_player_prepare._entry_ptr.27, ptr @uni_player_prepare._entry_ptr.30, ptr @uni_player_prepare._entry_ptr.33, ptr @uni_player_prepare_iec958._entry, ptr @uni_player_prepare_iec958._entry.36, ptr @uni_player_prepare_iec958._entry_ptr, ptr @uni_player_prepare_iec958._entry_ptr.37, ptr @uni_player_prepare_pcm._entry, ptr @uni_player_prepare_pcm._entry.40, ptr @uni_player_prepare_pcm._entry.42, ptr @uni_player_prepare_pcm._entry.45, ptr @uni_player_prepare_pcm._entry.47, ptr @uni_player_prepare_pcm._entry_ptr, ptr @uni_player_prepare_pcm._entry_ptr.41, ptr @uni_player_prepare_pcm._entry_ptr.44, ptr @uni_player_prepare_pcm._entry_ptr.46, ptr @uni_player_prepare_pcm._entry_ptr.49, ptr @uni_player_resume._entry, ptr @uni_player_resume._entry_ptr, ptr @uni_player_start._entry, ptr @uni_player_start._entry.51, ptr @uni_player_start._entry_ptr, ptr @uni_player_start._entry_ptr.53, ptr @uni_player_stop._entry, ptr @uni_player_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uni_player_dai_ops, ptr @.str.5, ptr @.str.6, ptr @uni_tdm_hw, ptr @uni_player_pcm_hw, ptr @.str.8, ptr @.str.13, ptr @.str.16, ptr @uni_player_init.__key, ptr @.str.18, ptr @uni_player_init.__key.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.43, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @uni_player_iec958_ctl, ptr @uni_player_clk_adj_ctl, ptr @.str.70, ptr @.str.71], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_tdm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_init.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_iec958._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_iec958._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_pcm._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_pcm._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_pcm._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_prepare_pcm._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_start._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_parse_dt_audio_glue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_irq_handler._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_irq_handler._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_irq_handler._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_iec958_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_player_clk_adj_ctl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uni_player_resume(ptr nocapture noundef readonly %player) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_sel = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 5
  %0 = ptrtoint ptr %clk_sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_sel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %1, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %base = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 64
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %7 = and i32 %6, 2147483647
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %9, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %7) #6, !srcloc !151
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !150
  %13 = and i32 %12, -268435457
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %15, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #6, !srcloc !151
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #6, !srcloc !150
  %19 = and i32 %18, -257
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr38 = getelementptr i8, ptr %21, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %19) #6, !srcloc !151
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %23, i32 64
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #6, !srcloc !150
  %25 = and i32 %24, -1025
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 %25) #6, !srcloc !151
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uni_player_init(ptr noundef %pdev, ptr noundef %player) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %state = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 16
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %dai_ops = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 24
  %2 = ptrtoint ptr %dai_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uni_player_dai_ops, ptr %dai_ops, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %id.i = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 3
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %call.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.54) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %uni_player_parse_dt_audio_glue.exit, label %uni_player_parse_dt_audio_glue.exit.thread

uni_player_parse_dt_audio_glue.exit.thread:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %6, 8
  %.fca.1.insert.i = insertvalue [5 x i32] [i32 164, i32 poison, i32 poison, i32 poison, i32 poison], i32 %add.i, 1
  %.fca.2.insert.i = insertvalue [5 x i32] %.fca.1.insert.i, i32 %add.i, 2
  %.fca.3.insert.i = insertvalue [5 x i32] %.fca.2.insert.i, i32 0, 3
  %.fca.4.insert.i = insertvalue [5 x i32] %.fca.3.insert.i, i32 0, 4
  %call11.i = tail call ptr @regmap_field_alloc(ptr noundef %call.i, [5 x i32] %.fca.4.insert.i) #6
  %clk_sel.i = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 5
  %7 = ptrtoint ptr %clk_sel.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11.i, ptr %clk_sel.i, align 4
  %call13.i = tail call ptr @regmap_field_alloc(ptr noundef %call.i, [5 x i32] [i32 164, i32 0, i32 1, i32 0, i32 0]) #6
  %valid_sel.i = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 6
  %8 = ptrtoint ptr %valid_sel.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13.i, ptr %valid_sel.i, align 4
  br label %if.end

uni_player_parse_dt_audio_glue.exit:              ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  %cmp = icmp slt ptr %call.i, null
  br i1 %cmp, label %do.end, label %uni_player_parse_dt_audio_glue.exit.if.end_crit_edge

uni_player_parse_dt_audio_glue.exit.if.end_crit_edge: ; preds = %uni_player_parse_dt_audio_glue.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %uni_player_parse_dt_audio_glue.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call.i to i32
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end:                                           ; preds = %uni_player_parse_dt_audio_glue.exit.if.end_crit_edge, %uni_player_parse_dt_audio_glue.exit.thread
  %ver = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 4
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp3 = icmp sgt i32 %13, 4
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %underflow_enabled = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 1
  %14 = ptrtoint ptr %underflow_enabled to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %underflow_enabled, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %15 = ptrtoint ptr %player to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %player, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %16)
  %cmp6 = icmp eq i32 %16, 8
  %spec.select = select i1 %cmp6, ptr @uni_tdm_hw, ptr @uni_player_pcm_hw
  %17 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select, ptr %17, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call11 = tail call ptr @of_clk_get(ptr noundef %20, i32 noundef 0) #6
  %clk = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 13
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.8) #9
  %24 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end5
  %clk_sel = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 5
  %27 = ptrtoint ptr %clk_sel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk_sel, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %if.end21.if.end32_crit_edge, label %if.then22

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then22:                                        ; preds = %if.end21
  %call.i200 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %28, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool25.not = icmp eq i32 %call.i200, 0
  br i1 %tobool25.not, label %if.then22.if.end32_crit_edge, label %do.end29

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end29:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end32:                                         ; preds = %if.then22.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  %valid_sel = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 6
  %31 = ptrtoint ptr %valid_sel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %valid_sel, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %if.end32.if.end46_crit_edge, label %land.lhs.true

if.end32.if.end46_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

land.lhs.true:                                    ; preds = %if.end32
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp34 = icmp eq i32 %34, 1
  br i1 %cmp34, label %if.then35, label %land.lhs.true.if.end46_crit_edge

land.lhs.true.if.end46_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then35:                                        ; preds = %land.lhs.true
  %call.i201 = tail call i32 @regmap_field_update_bits_base(ptr noundef nonnull %32, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %tobool39.not = icmp eq i32 %call.i201, 0
  br i1 %tobool39.not, label %if.then35.if.end46_crit_edge, label %do.end43

if.then35.if.end46_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end46:                                         ; preds = %if.then35.if.end46_crit_edge, %land.lhs.true.if.end46_crit_edge, %if.end32.if.end46_crit_edge
  %irq = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 12
  %37 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %if.end.i202, label %if.end46.dev_name.exit_crit_edge

if.end46.dev_name.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i202:                                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i202, %if.end46.dev_name.exit_crit_edge
  %retval.0.i203 = phi ptr [ %42, %if.end.i202 ], [ %40, %if.end46.dev_name.exit_crit_edge ]
  %call.i204 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %38, ptr noundef nonnull @uni_player_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i203, ptr noundef %player) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %cmp51 = icmp slt i32 %call.i204, 0
  br i1 %cmp51, label %do.end55, label %do.body59

do.end55:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev1, align 4
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.16, i32 noundef %46) #9
  br label %cleanup

do.body59:                                        ; preds = %dev_name.exit
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @uni_player_init.__key) #6
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.20, ptr noundef nonnull @uni_player_init.__key.19, i16 noundef signext 3) #6
  %base = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %47 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %48, i32 64
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %50 = and i32 %49, 2147483647
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr74 = getelementptr i8, ptr %52, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %50) #6, !srcloc !151
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr77 = getelementptr i8, ptr %54, i32 68
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #6, !srcloc !150
  %56 = and i32 %55, -268435457
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %58, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %56) #6, !srcloc !151
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr86 = getelementptr i8, ptr %60, i32 68
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #6, !srcloc !150
  %62 = and i32 %61, -257
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr101 = getelementptr i8, ptr %64, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101, i32 %62) #6, !srcloc !151
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr104 = getelementptr i8, ptr %66, i32 64
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #6, !srcloc !150
  %68 = and i32 %67, -1025
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr110 = getelementptr i8, ptr %70, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 %68) #6, !srcloc !151
  %71 = ptrtoint ptr %player to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %player, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i32 %72, label %if.else132 [
    i32 1, label %do.body59.if.then115_crit_edge
    i32 4, label %do.body59.if.then115_crit_edge207
  ]

do.body59.if.then115_crit_edge207:                ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

do.body59.if.then115_crit_edge:                   ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then115

if.then115:                                       ; preds = %do.body59.if.then115_crit_edge, %do.body59.if.then115_crit_edge207
  %iec958 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %iec958 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %iec958, align 4
  %arrayidx119 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx119, align 1
  %arrayidx123 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx123, align 2
  %arrayidx127 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %arrayidx127, align 1
  %arrayidx131 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 11, ptr %arrayidx131, align 4
  %num_ctrls = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 21
  %79 = ptrtoint ptr %num_ctrls to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %num_ctrls, align 4
  %snd_ctrls = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 20
  %80 = ptrtoint ptr %snd_ctrls to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @uni_player_iec958_ctl, ptr %snd_ctrls, align 4
  br label %cleanup

if.else132:                                       ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %num_ctrls133 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 21
  %81 = ptrtoint ptr %num_ctrls133 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %num_ctrls133, align 4
  %snd_ctrls134 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 20
  %82 = ptrtoint ptr %snd_ctrls134 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @uni_player_clk_adj_ctl, ptr %snd_ctrls134, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else132, %if.then115, %do.end55, %do.end43, %do.end29, %do.end17, %do.end
  %retval.0 = phi i32 [ %9, %do.end ], [ %26, %do.end17 ], [ %call.i200, %do.end29 ], [ %call.i201, %do.end43 ], [ %call.i204, %do.end55 ], [ 0, %if.else132 ], [ 0, %if.then115 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #6
  %substream = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.irq_spin_unlock_crit_edge, label %if.end

entry.irq_spin_unlock_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_spin_unlock

if.end:                                           ; preds = %entry
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %1) #6
  %state = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end.stream_unlock_crit_edge, label %if.end3

if.end.stream_unlock_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %stream_unlock

if.end3:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #6, !srcloc !151
  %ver = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 4
  %10 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp7 = icmp slt i32 %11, 5
  %shl = select i1 %cmp7, i32 1, i32 256
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end3.if.end24_crit_edge, label %do.end, !prof !152

if.end3.if.end24_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.end:                                           ; preds = %if.end3
  %dev = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.57) #9
  %underflow_enabled = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 1
  %14 = ptrtoint ptr %underflow_enabled to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %underflow_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %state, align 4
  br label %if.end24

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %cmp16 = icmp slt i32 %18, 5
  %shl18 = select i1 %cmp16, i32 1, i32 256
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl18)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %19) #6, !srcloc !151
  %22 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %substream, align 4
  %call22 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %23) #6
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then13, %if.end3.if.end24_crit_edge
  %ret.0 = phi i32 [ 0, %if.end3.if.end24_crit_edge ], [ 1, %if.else ], [ 1, %if.then13 ]
  %and25 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end42_crit_edge, label %do.end36, !prof !152

if.end24.if.end42_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

do.end36:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %24 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.60) #9
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 131072) #6, !srcloc !151
  %28 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream, align 4
  %call41 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %29) #6
  br label %if.end42

if.end42:                                         ; preds = %do.end36, %if.end24.if.end42_crit_edge
  %ret.1 = phi i32 [ 1, %do.end36 ], [ %ret.0, %if.end24.if.end42_crit_edge ]
  %30 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp44 = icmp slt i32 %31, 5
  %spec.select = select i1 %cmp44, i32 0, i32 4096
  %and50 = and i32 %spec.select, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end42.if.end106_crit_edge, label %if.then58, !prof !152

if.end42.if.end106_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then58:                                        ; preds = %if.end42
  %underflow_enabled59 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 1
  %32 = ptrtoint ptr %underflow_enabled59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %underflow_enabled59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool60.not = icmp eq i32 %33, 0
  br i1 %tobool60.not, label %do.end64, label %if.end66

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  %dev65 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %34 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.63) #9
  br label %stream_unlock

if.end66:                                         ; preds = %if.then58
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %37, i32 80
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #6, !srcloc !150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @uni_player_irq_handler.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@uni_player_irq_handler, %if.then86)) #6
          to label %do.end90 [label %if.then86], !srcloc !153

if.then86:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %39 = lshr i32 %38, 24
  %dev87 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %40 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev87, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @uni_player_irq_handler.__UNIQUE_ID_ddebug240, ptr noundef %41, ptr noundef nonnull @.str.66, i32 noundef %39) #6
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %if.end66
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %44 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp94 = icmp slt i32 %45, 5
  %cond95 = select i1 %cmp94, i32 -1, i32 76
  %add.ptr96 = getelementptr i8, ptr %43, i32 %cond95
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #6, !srcloc !150
  %47 = or i32 %46, 16777216
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base, align 4
  %50 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %51)
  %cmp102 = icmp slt i32 %51, 5
  %cond103 = select i1 %cmp102, i32 -1, i32 76
  %add.ptr104 = getelementptr i8, ptr %49, i32 %cond103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %47) #6, !srcloc !151
  %52 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %state, align 4
  br label %if.end106

if.end106:                                        ; preds = %do.end90, %if.end42.if.end106_crit_edge
  %ret.2 = phi i32 [ 1, %do.end90 ], [ %ret.1, %if.end42.if.end106_crit_edge ]
  %53 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %54)
  %cmp108 = icmp slt i32 %54, 5
  %spec.select172 = select i1 %cmp108, i32 0, i32 8192
  %and117 = and i32 %spec.select172, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %if.end106.stream_unlock_crit_edge, label %do.end128, !prof !152

if.end106.stream_unlock_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %stream_unlock

do.end128:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %dev129 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %55 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev129, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.68) #9
  %57 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %substream, align 4
  %call131 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %58) #6
  br label %stream_unlock

stream_unlock:                                    ; preds = %do.end128, %if.end106.stream_unlock_crit_edge, %do.end64, %if.end.stream_unlock_crit_edge
  %ret.3 = phi i32 [ 0, %if.end.stream_unlock_crit_edge ], [ 1, %do.end128 ], [ %ret.2, %if.end106.stream_unlock_crit_edge ], [ -1, %do.end64 ]
  %59 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef %60) #6
  br label %irq_spin_unlock

irq_spin_unlock:                                  ; preds = %stream_unlock, %entry.irq_spin_unlock_crit_edge
  %ret.4 = phi i32 [ %ret.3, %stream_unlock ], [ 0, %entry.irq_spin_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #6
  ret i32 %ret.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #0 align 64 {
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
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp1 = icmp eq i32 %dir, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp2.not = icmp eq i32 %clk_id, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  %call5 = tail call fastcc i32 @uni_player_clk_set_rate(ptr noundef %5, i32 noundef %freq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %mclk = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq, ptr %mclk, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_set_fmt(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %substream6 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #6
  %clk_adj = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 15
  %7 = ptrtoint ptr %clk_adj to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %clk_adj, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp8 = icmp eq i32 %9, 8
  br i1 %cmp8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %call10 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %11, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @sti_uniperiph_fix_tdm_chan, ptr noundef %5, i32 noundef 10, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime, align 4
  %call16 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %13, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sti_uniperiph_fix_tdm_format, ptr noundef %5, i32 noundef 1, i32 noundef -1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uni_player_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %state = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @uni_player_stop(ptr noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %substream9 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %substream9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %substream9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_hw_params(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %word_pos.i = alloca [4 x i32], align 4
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
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime1, align 4
  %state = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp3 = icmp eq i32 %13, 8
  %channels.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channels.i, align 8
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %17) #6
  %mul.i = mul i32 %call.i, %15
  %div281282 = lshr i32 %mul.i, 5
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mul = shl i32 %15, 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %transfer_size.0 = phi i32 [ %div281282, %if.then4 ], [ %mul, %if.else ]
  %ver = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp7 = icmp slt i32 %19, 5
  %sub = sub i32 70, %transfer_size.0
  %trigger_limit.0 = select i1 %cmp7, i32 %sub, i32 %transfer_size.0
  %20 = zext i32 %trigger_limit.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %trigger_limit.0, label %land.lhs.true [
    i32 0, label %if.end6.do.end20_crit_edge
    i32 1, label %if.end6.if.end22_crit_edge
  ]

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.end6.do.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

land.lhs.true:                                    ; preds = %if.end6
  %21 = and i32 %transfer_size.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %trigger_limit.0)
  %cmp16 = icmp sgt i32 %trigger_limit.0, 127
  %or.cond = select i1 %tobool14.not, i1 true, i1 %cmp16
  br i1 %or.cond, label %land.lhs.true.do.end20_crit_edge, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end20

do.end20:                                         ; preds = %land.lhs.true.do.end20_crit_edge, %if.end6.do.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.26, i32 noundef %trigger_limit.0) #9
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %base = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %27 = and i32 %26, -8323073
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %and24 = shl i32 %trigger_limit.0, 8
  %shl = and i32 %and24, 32512
  %or = or i32 %28, %shl
  %29 = tail call i32 @llvm.bswap.i32(i32 %or)
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %31, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %29) #6, !srcloc !151
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %33, label %do.end37 [
    i32 1, label %if.end22.sw.epilog_crit_edge
    i32 2, label %sw.bb29
    i32 4, label %if.end22.sw.epilog_crit_edge283
    i32 8, label %sw.bb33
  ]

if.end22.sw.epilog_crit_edge283:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end22
  %daifmt.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 22
  %35 = ptrtoint ptr %daifmt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %daifmt.i, align 4
  %and.i = and i32 %36, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %sw.bb29.if.end.i_crit_edge, label %if.else.i

sw.bb29.if.end.i_crit_edge:                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.else.i:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  %format.i259 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %37 = ptrtoint ptr %format.i259 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format.i259, align 4
  %call.i260 = tail call i32 @snd_pcm_format_width(i32 noundef %38) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %sw.bb29.if.end.i_crit_edge
  %slot_width.0.i = phi i32 [ %call.i260, %if.else.i ], [ 32, %sw.bb29.if.end.i_crit_edge ]
  %channels.i261 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %39 = ptrtoint ptr %channels.i261 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channels.i261, align 8
  %mclk.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 14
  %41 = ptrtoint ptr %mclk.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mclk.i, align 4
  %rate.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %43 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rate.i, align 4
  %div.i = udiv i32 %42, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %slot_width.0.i)
  %cmp1.i = icmp ne i32 %slot_width.0.i, 32
  %45 = and i32 %div.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i = icmp eq i32 %45, 0
  %or.cond.i = select i1 %cmp1.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i262 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %dev.i262 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i262, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %slot_width.0.i)
  %cmp4.i = icmp ne i32 %slot_width.0.i, 16
  %48 = and i32 %div.i, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool7.not.i = icmp eq i32 %48, 0
  %or.cond197.i = select i1 %cmp4.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond197.i, label %if.end13.i, label %do.end11.i

do.end11.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev12.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %49 = ptrtoint ptr %dev12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev12.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.end3.i
  %51 = zext i32 %slot_width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %slot_width.0.i, label %do.end48.i [
    i32 32, label %sw.bb.i
    i32 16, label %sw.bb27.i
  ]

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !150
  %55 = and i32 %54, -16777217
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %57, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %55) #6, !srcloc !151
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr20.i = getelementptr i8, ptr %59, i32 72
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #6, !srcloc !150
  %61 = and i32 %60, -234881025
  %62 = or i32 %61, 167772160
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr26.i = getelementptr i8, ptr %64, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %62) #6, !srcloc !151
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %66, i32 72
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #6, !srcloc !150
  %68 = or i32 %67, 16777216
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr36.i = getelementptr i8, ptr %70, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 %68) #6, !srcloc !151
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr39.i = getelementptr i8, ptr %72, i32 72
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #6, !srcloc !150
  %74 = and i32 %73, -234881025
  %75 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base, align 4
  %add.ptr45.i = getelementptr i8, ptr %76, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %74) #6, !srcloc !151
  br label %sw.epilog.i

do.end48.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev49.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %dev49.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev49.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.43) #9
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb27.i, %sw.bb.i
  %format50.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %79 = ptrtoint ptr %format50.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %format50.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %80, label %do.end74.i [
    i32 2, label %sw.bb51.i
    i32 10, label %sw.bb61.i
  ]

sw.bb51.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr54.i = getelementptr i8, ptr %83, i32 64
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #6, !srcloc !150
  %85 = or i32 %84, 536870912
  %86 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base, align 4
  %add.ptr60.i = getelementptr i8, ptr %87, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %85) #6, !srcloc !151
  br label %sw.epilog76.i

sw.bb61.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base, align 4
  %add.ptr64.i = getelementptr i8, ptr %89, i32 64
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64.i) #6, !srcloc !150
  %91 = and i32 %90, -536870913
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr70.i = getelementptr i8, ptr %93, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %91) #6, !srcloc !151
  br label %sw.epilog76.i

do.end74.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev75.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %94 = ptrtoint ptr %dev75.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev75.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.32) #9
  br label %cleanup

sw.epilog76.i:                                    ; preds = %sw.bb61.i, %sw.bb51.i
  %96 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base, align 4
  %add.ptr79.i = getelementptr i8, ptr %97, i32 68
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79.i) #6, !srcloc !150
  %99 = and i32 %98, -268435457
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %add.ptr85.i = getelementptr i8, ptr %101, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 %99) #6, !srcloc !151
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr88.i = getelementptr i8, ptr %103, i32 68
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88.i) #6, !srcloc !150
  %105 = and i32 %104, 534839295
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #6
  %mul.i263 = shl nuw nsw i32 %slot_width.0.i, 1
  %mul92.i = mul i32 %mul.i263, %40
  %div93.i = sdiv i32 %div.i, %mul92.i
  %and94.i = shl i32 %div93.i, 5
  %shl.i = and i32 %and94.i, 8160
  %or95.i = or i32 %shl.i, %106
  %107 = tail call i32 @llvm.bswap.i32(i32 %or95.i) #6
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr97.i = getelementptr i8, ptr %109, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 %107) #6, !srcloc !151
  %110 = ptrtoint ptr %channels.i261 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %channels.i261, align 8
  %rem99.i = and i32 %111, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem99.i)
  %tobool100.not.i = icmp ne i32 %rem99.i, 0
  %112 = add i32 %111, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %112)
  %113 = icmp ult i32 %112, -9
  %114 = or i1 %113, %tobool100.not.i
  br i1 %114, label %do.end109.i, label %if.end111.i

do.end109.i:                                      ; preds = %sw.epilog76.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev110.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %115 = ptrtoint ptr %dev110.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev110.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end111.i:                                      ; preds = %sw.epilog76.i
  call void @__sanitizer_cov_trace_pc() #8
  %117 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base, align 4
  %add.ptr114.i = getelementptr i8, ptr %118, i32 72
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #6, !srcloc !150
  %120 = and i32 %119, -917505
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #6
  %122 = ptrtoint ptr %channels.i261 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %channels.i261, align 8
  %124 = shl i32 %123, 8
  %shl121.i = and i32 %124, 3584
  %or122.i = or i32 %shl121.i, %121
  %125 = tail call i32 @llvm.bswap.i32(i32 %or122.i) #6
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr124.i = getelementptr i8, ptr %127, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %125) #6, !srcloc !151
  %128 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %base, align 4
  %add.ptr127.i = getelementptr i8, ptr %129, i32 64
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127.i) #6, !srcloc !150
  %131 = and i32 %130, -268435457
  %132 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %base, align 4
  %add.ptr133.i = getelementptr i8, ptr %133, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr133.i, i32 %131) #6, !srcloc !151
  %134 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %base, align 4
  %add.ptr136.i = getelementptr i8, ptr %135, i32 72
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136.i) #6, !srcloc !150
  %137 = or i32 %136, 65536
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %base, align 4
  %add.ptr142.i = getelementptr i8, ptr %139, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr142.i, i32 %137) #6, !srcloc !151
  %140 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base, align 4
  %add.ptr145.i = getelementptr i8, ptr %141, i32 68
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145.i) #6, !srcloc !150
  %143 = and i32 %142, -513
  %144 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %base, align 4
  %add.ptr151.i = getelementptr i8, ptr %145, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151.i, i32 %143) #6, !srcloc !151
  br label %if.end41

sw.bb33:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word_pos.i) #6
  %146 = call ptr @memcpy(ptr %word_pos.i, ptr @__const.uni_player_prepare_tdm.word_pos, i32 16)
  %slots.i.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 1
  %147 = ptrtoint ptr %slots.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %slots.i.i, align 4
  %slot_width.i.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 23, i32 2
  %149 = ptrtoint ptr %slot_width.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %slot_width.i.i, align 4
  %mul.i.i = mul i32 %150, %148
  %div.i.i = sdiv i32 %mul.i.i, 8
  %channels.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %151 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %channels.i.i, align 8
  %format.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %153 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %format.i.i, align 4
  %call.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %154) #6
  %155 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base, align 4
  %add.ptr.i265 = getelementptr i8, ptr %156, i32 64
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #6, !srcloc !150
  %158 = and i32 %157, -536870913
  %159 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %160, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %158) #6, !srcloc !151
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %162, i32 72
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #6, !srcloc !150
  %164 = and i32 %163, -234881025
  %165 = or i32 %164, 167772160
  %166 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %167, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %165) #6, !srcloc !151
  %168 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base, align 4
  %add.ptr16.i = getelementptr i8, ptr %169, i32 72
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #6, !srcloc !150
  %171 = and i32 %170, -917505
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #6
  %mul.i1.i = shl i32 %152, 3
  %173 = mul i32 %mul.i1.i, %call.i.i
  %shl.i266 = and i32 %173, 3584
  %or22.i = or i32 %172, %shl.i266
  %174 = tail call i32 @llvm.bswap.i32(i32 %or22.i) #6
  %175 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %176, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %174) #6, !srcloc !151
  %177 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %base, align 4
  %add.ptr27.i = getelementptr i8, ptr %178, i32 72
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !150
  %180 = or i32 %179, 65536
  %181 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %base, align 4
  %add.ptr33.i = getelementptr i8, ptr %182, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %180) #6, !srcloc !151
  %183 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base, align 4
  %add.ptr36.i267 = getelementptr i8, ptr %184, i32 72
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i267) #6, !srcloc !150
  %186 = and i32 %185, 2147483647
  %187 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %base, align 4
  %add.ptr42.i = getelementptr i8, ptr %188, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %186) #6, !srcloc !151
  %189 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base, align 4
  %add.ptr45.i268 = getelementptr i8, ptr %190, i32 280
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i268) #6, !srcloc !150
  %192 = or i32 %191, 16777216
  %193 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base, align 4
  %add.ptr51.i = getelementptr i8, ptr %194, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %192) #6, !srcloc !151
  %195 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base, align 4
  %add.ptr54.i269 = getelementptr i8, ptr %196, i32 288
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i269) #6, !srcloc !150
  %198 = and i32 %197, 16777215
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #6
  %and58.i = and i32 %div.i.i, 255
  %or60.i = or i32 %199, %and58.i
  %200 = tail call i32 @llvm.bswap.i32(i32 %or60.i) #6
  %201 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base, align 4
  %add.ptr62.i = getelementptr i8, ptr %202, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %200) #6, !srcloc !151
  %call63.i = call i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef %5, ptr noundef nonnull %word_pos.i) #6
  %203 = ptrtoint ptr %word_pos.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %word_pos.i, align 4
  %205 = call i32 @llvm.bswap.i32(i32 %204) #6
  %206 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base, align 4
  %add.ptr65.i = getelementptr i8, ptr %207, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %205) #6, !srcloc !151
  %arrayidx66.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 1
  %208 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %arrayidx66.i, align 4
  %210 = call i32 @llvm.bswap.i32(i32 %209) #6
  %211 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base, align 4
  %add.ptr68.i = getelementptr i8, ptr %212, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68.i, i32 %210) #6, !srcloc !151
  %arrayidx69.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 2
  %213 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %arrayidx69.i, align 4
  %215 = call i32 @llvm.bswap.i32(i32 %214) #6
  %216 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %base, align 4
  %add.ptr71.i = getelementptr i8, ptr %217, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %215) #6, !srcloc !151
  %arrayidx72.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 3
  %218 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx72.i, align 4
  %220 = call i32 @llvm.bswap.i32(i32 %219) #6
  %221 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %base, align 4
  %add.ptr74.i = getelementptr i8, ptr %222, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74.i, i32 %220) #6, !srcloc !151
  %rate.i270 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 14
  %223 = ptrtoint ptr %rate.i270 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %rate.i270, align 4
  %mul.i271 = shl nsw i32 %div.i.i, 3
  %mul75.i = mul i32 %224, %mul.i271
  %ctrl_lock.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 19
  call void @mutex_lock_nested(ptr noundef %ctrl_lock.i, i32 noundef 0) #6
  %call76.i = call fastcc i32 @uni_player_clk_set_rate(ptr noundef %5, i32 noundef %mul75.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool.not.i272 = icmp eq i32 %call76.i, 0
  br i1 %tobool.not.i272, label %if.then.i, label %sw.bb33.uni_player_prepare_tdm.exit_crit_edge

sw.bb33.uni_player_prepare_tdm.exit_crit_edge:    ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  br label %uni_player_prepare_tdm.exit

if.then.i:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #8
  %mclk.i273 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 14
  %225 = ptrtoint ptr %mclk.i273 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %mul75.i, ptr %mclk.i273, align 4
  br label %uni_player_prepare_tdm.exit

uni_player_prepare_tdm.exit:                      ; preds = %if.then.i, %sw.bb33.uni_player_prepare_tdm.exit_crit_edge
  call void @mutex_unlock(ptr noundef %ctrl_lock.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word_pos.i) #6
  br label %if.end41

do.end37:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %dev38 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %226 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.29) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end22.sw.epilog_crit_edge, %if.end22.sw.epilog_crit_edge283
  %call32 = tail call fastcc i32 @uni_player_prepare_iec958(ptr noundef %5, ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool39.not = icmp eq i32 %call32, 0
  br i1 %tobool39.not, label %sw.epilog.if.end41_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.if.end41_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %sw.epilog.if.end41_crit_edge, %uni_player_prepare_tdm.exit, %if.end111.i
  %daifmt = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 22
  %228 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %daifmt, align 4
  %and42 = lshr i32 %229, 8
  %230 = and i32 %and42, 15
  %231 = zext i32 %230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %231, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %230, label %if.end41.sw.epilog119_crit_edge [
    i32 0, label %sw.bb43
    i32 2, label %sw.bb62
    i32 3, label %sw.bb81
    i32 4, label %sw.bb100
  ]

if.end41.sw.epilog119_crit_edge:                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog119

sw.bb43:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %232 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %233, i32 72
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #6, !srcloc !150
  %235 = and i32 %234, -268435457
  %236 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %237, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %235) #6, !srcloc !151
  %238 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %239, i32 72
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #6, !srcloc !150
  %241 = and i32 %240, -536870913
  %242 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %243, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %241) #6, !srcloc !151
  br label %sw.epilog119

sw.bb62:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %245, i32 72
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #6, !srcloc !150
  %247 = or i32 %246, 268435456
  %248 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %base, align 4
  %add.ptr71 = getelementptr i8, ptr %249, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %247) #6, !srcloc !151
  %250 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base, align 4
  %add.ptr74 = getelementptr i8, ptr %251, i32 72
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #6, !srcloc !150
  %253 = and i32 %252, -536870913
  %254 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %base, align 4
  %add.ptr80 = getelementptr i8, ptr %255, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %253) #6, !srcloc !151
  br label %sw.epilog119

sw.bb81:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %256 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base, align 4
  %add.ptr84 = getelementptr i8, ptr %257, i32 72
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #6, !srcloc !150
  %259 = and i32 %258, -268435457
  %260 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base, align 4
  %add.ptr90 = getelementptr i8, ptr %261, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %259) #6, !srcloc !151
  %262 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %263, i32 72
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #6, !srcloc !150
  %265 = or i32 %264, 536870912
  %266 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %base, align 4
  %add.ptr99 = getelementptr i8, ptr %267, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %265) #6, !srcloc !151
  br label %sw.epilog119

sw.bb100:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %268 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %269, i32 72
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #6, !srcloc !150
  %271 = or i32 %270, 268435456
  %272 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %273, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %271) #6, !srcloc !151
  %274 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %base, align 4
  %add.ptr112 = getelementptr i8, ptr %275, i32 72
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #6, !srcloc !150
  %277 = or i32 %276, 536870912
  %278 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %base, align 4
  %add.ptr118 = getelementptr i8, ptr %279, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %277) #6, !srcloc !151
  br label %sw.epilog119

sw.epilog119:                                     ; preds = %sw.bb100, %sw.bb81, %sw.bb62, %sw.bb43, %if.end41.sw.epilog119_crit_edge
  %280 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %daifmt, align 4
  %and121 = and i32 %281, 15
  %282 = zext i32 %and121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %282, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %and121, label %do.end182 [
    i32 1, label %sw.bb122
    i32 3, label %sw.bb141
    i32 2, label %sw.bb160
  ]

sw.bb122:                                         ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #8
  %283 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %base, align 4
  %add.ptr125 = getelementptr i8, ptr %284, i32 72
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #6, !srcloc !150
  %286 = and i32 %285, 2147483647
  %287 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %288, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr131, i32 %286) #6, !srcloc !151
  %289 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %base, align 4
  %add.ptr134 = getelementptr i8, ptr %290, i32 72
  %291 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134) #6, !srcloc !150
  %292 = and i32 %291, -1073741825
  %293 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %base, align 4
  %add.ptr140 = getelementptr i8, ptr %294, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr140, i32 %292) #6, !srcloc !151
  br label %sw.epilog184

sw.bb141:                                         ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #8
  %295 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %base, align 4
  %add.ptr144 = getelementptr i8, ptr %296, i32 72
  %297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #6, !srcloc !150
  %298 = and i32 %297, 2147483647
  %299 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %base, align 4
  %add.ptr150 = getelementptr i8, ptr %300, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr150, i32 %298) #6, !srcloc !151
  %301 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %base, align 4
  %add.ptr153 = getelementptr i8, ptr %302, i32 72
  %303 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr153) #6, !srcloc !150
  %304 = or i32 %303, 1073741824
  %305 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %base, align 4
  %add.ptr159 = getelementptr i8, ptr %306, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr159, i32 %304) #6, !srcloc !151
  br label %sw.epilog184

sw.bb160:                                         ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #8
  %307 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %base, align 4
  %add.ptr163 = getelementptr i8, ptr %308, i32 72
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr163) #6, !srcloc !150
  %310 = or i32 %309, -2147483648
  %311 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %base, align 4
  %add.ptr169 = getelementptr i8, ptr %312, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr169, i32 %310) #6, !srcloc !151
  %313 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %base, align 4
  %add.ptr172 = getelementptr i8, ptr %314, i32 72
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr172) #6, !srcloc !150
  %316 = or i32 %315, 1073741824
  %317 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %base, align 4
  %add.ptr178 = getelementptr i8, ptr %318, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr178, i32 %316) #6, !srcloc !151
  br label %sw.epilog184

do.end182:                                        ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #8
  %dev183 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %319 = ptrtoint ptr %dev183 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev183, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %320, ptr noundef nonnull @.str.32) #9
  br label %cleanup

sw.epilog184:                                     ; preds = %sw.bb160, %sw.bb141, %sw.bb122
  %321 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %base, align 4
  %add.ptr187 = getelementptr i8, ptr %322, i32 72
  %323 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr187) #6, !srcloc !150
  %324 = and i32 %323, -15794176
  %325 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %base, align 4
  %add.ptr193 = getelementptr i8, ptr %326, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr193, i32 %324) #6, !srcloc !151
  %call194 = call i32 @sti_uniperiph_reset(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog184, %do.end182, %sw.epilog.cleanup_crit_edge, %do.end37, %do.end109.i, %do.end74.i, %do.end48.i, %do.end11.i, %do.end.i, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ -22, %do.end37 ], [ -22, %do.end182 ], [ %call194, %sw.epilog184 ], [ %call32, %sw.epilog.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end11.i ], [ -22, %do.end48.i ], [ -22, %do.end74.i ], [ -22, %do.end109.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
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
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uni, align 4
  %6 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 6, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %state.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i9 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %clk.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 13
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.do.end4.i_crit_edge

if.end.i.do.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

if.end.i.i:                                       ; preds = %if.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end6.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %do.end4.i

do.end4.i:                                        ; preds = %if.then3.i.i, %if.end.i.do.end4.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %if.end.i.do.end4.i_crit_edge ]
  %dev5.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dev5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev5.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i.i
  %base.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !150
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %17) #6, !srcloc !151
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 131072) #6, !srcloc !151
  %ver.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 4
  %22 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %23)
  %cmp12.i = icmp slt i32 %23, 5
  %shl.i = select i1 %cmp12.i, i32 1, i32 256
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %24) #6, !srcloc !151
  %underflow_enabled.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %underflow_enabled.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %underflow_enabled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool15.not.i = icmp eq i32 %28, 0
  br i1 %tobool15.not.i, label %if.end6.i.if.end38.i_crit_edge, label %if.then16.i

if.end6.i.if.end38.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then16.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp18.i = icmp slt i32 %30, 5
  %spec.select.i = select i1 %cmp18.i, i32 0, i32 1048576
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %spec.select.i) #6, !srcloc !151
  %33 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp27.i = icmp slt i32 %34, 5
  %cond35.i = select i1 %cmp27.i, i32 0, i32 2097152
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %cond35.i) #6, !srcloc !151
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then16.i, %if.end6.i.if.end38.i_crit_edge
  %call39.i = tail call i32 @sti_uniperiph_reset(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %if.then41.i, label %if.end43.i

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %38) #6
  tail call void @clk_unprepare(ptr noundef %38) #6
  br label %cleanup

if.end43.i:                                       ; preds = %if.end38.i
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %40, i32 68
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #6, !srcloc !150
  %42 = and i32 %41, -117440513
  %43 = or i32 %42, 50331648
  %44 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %43) #6, !srcloc !151
  %46 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp52.i = icmp slt i32 %47, 5
  br i1 %cmp52.i, label %if.then53.i, label %if.end43.i.if.else.i_crit_edge

if.end43.i.if.else.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then53.i:                                      ; preds = %if.end43.i
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %49, label %if.then53.i.if.then71.i_crit_edge [
    i32 1, label %if.then53.i.if.end68.i_crit_edge
    i32 4, label %if.then53.i.if.end68.i_crit_edge10
  ]

if.then53.i.if.end68.i_crit_edge10:               ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then53.i.if.end68.i_crit_edge:                 ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68.i

if.then53.i.if.then71.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71.i

if.end68.i:                                       ; preds = %if.then53.i.if.end68.i_crit_edge, %if.then53.i.if.end68.i_crit_edge10
  %51 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %52, i32 68
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60.i) #6, !srcloc !150
  %54 = or i32 %53, 512
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %56, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 %54) #6, !srcloc !151
  %57 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr.i)
  %cmp70.i = icmp slt i32 %.pr.i, 5
  br i1 %cmp70.i, label %if.end68.i.if.then71.i_crit_edge, label %if.end68.i.if.else.i_crit_edge

if.end68.i.if.else.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.end68.i.if.then71.i_crit_edge:                 ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then71.i

if.then71.i:                                      ; preds = %if.end68.i.if.then71.i_crit_edge, %if.then53.i.if.then71.i_crit_edge
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr74.i = getelementptr i8, ptr %59, i32 64
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74.i) #6, !srcloc !150
  %61 = or i32 %60, 256
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %63, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %61) #6, !srcloc !151
  br label %if.end94.i

if.else.i:                                        ; preds = %if.end68.i.if.else.i_crit_edge, %if.end43.i.if.else.i_crit_edge
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %65, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 33554432) #6, !srcloc !151
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.else.i, %if.then71.i
  %66 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %state.i, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @uni_player_stop(ptr noundef %5)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @uni_player_resume(ptr noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb4, %sw.bb2, %if.end94.i, %if.then41.i, %do.end4.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ %retval.0.i.ph.i, %do.end4.i ], [ %call39.i, %if.then41.i ], [ 0, %if.end94.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_clk_set_rate(ptr nocapture noundef %player, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_adj = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 15
  %0 = ptrtoint ptr %clk_adj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_adj, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  %2 = tail call i32 @llvm.abs.i32(i32 %1, i1 false)
  %conv = zext i32 %rate to i64
  %conv1 = sext i32 %2 to i64
  %mul = mul nsw i64 %conv1, %conv
  %add = add nsw i64 %mul, 500000
  %call = tail call i64 @div64_u64(i64 noundef %add, i64 noundef 1000000) #6
  %conv2 = trunc i64 %call to i32
  %3 = sub i32 0, %conv2
  %4 = select i1 %cmp, i32 %3, i32 %conv2
  %add4 = add i32 %4, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add4)
  %tobool.not = icmp eq i32 %add4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %clk = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 13
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call7 = tail call i32 @clk_set_rate(ptr noundef %6, i32 noundef %add4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call13 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %sub17 = sub i32 %call13, %rate
  %9 = tail call i32 @llvm.abs.i32(i32 %sub17, i1 false)
  %conv24 = sext i32 %9 to i64
  %mul25 = mul nsw i64 %conv24, 1000000
  %div55 = lshr i32 %rate, 1
  %conv26 = zext i32 %div55 to i64
  %add27 = add nsw i64 %mul25, %conv26
  %call29 = tail call i64 @div64_u64(i64 noundef %add27, i64 noundef %conv) #6
  %conv30 = trunc i64 %call29 to i32
  %10 = sub i32 0, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18.inv56 = icmp slt i32 %sub17, 0
  %11 = select i1 %cmp18.inv56, i32 %10, i32 %conv30
  %12 = ptrtoint ptr %clk_adj to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %clk_adj, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -22, %entry.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_format(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_stop(ptr noundef %player) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 16
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %7 = and i32 %6, -117440513
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #6, !srcloc !151
  %call3 = tail call i32 @sti_uniperiph_reset(ptr noundef %player) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %11, i32 24
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !150
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #6, !srcloc !151
  %clk = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 13
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end6 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_reset(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uni_player_prepare_iec958(ptr noundef %player, ptr noundef %runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mclk = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 14
  %0 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mclk, align 4
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %2 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rate, align 4
  %div = udiv i32 %1, %3
  %4 = and i32 %div, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp = icmp slt i32 %div, 1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, i32 noundef %div) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 12
  %7 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %format, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %8, label %do.end51 [
    i32 2, label %sw.bb
    i32 10, label %sw.bb21
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !150
  %13 = or i32 %12, 536870912
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %13) #6, !srcloc !151
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !150
  %19 = and i32 %18, -16777217
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %19) #6, !srcloc !151
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 72
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !150
  %25 = and i32 %24, -234881025
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %25) #6, !srcloc !151
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %base23 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %28 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base23, align 4
  %add.ptr24 = getelementptr i8, ptr %29, i32 64
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !150
  %31 = and i32 %30, -536870913
  %32 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base23, align 4
  %add.ptr30 = getelementptr i8, ptr %33, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %31) #6, !srcloc !151
  %34 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base23, align 4
  %add.ptr33 = getelementptr i8, ptr %35, i32 72
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #6, !srcloc !150
  %37 = and i32 %36, -16777217
  %38 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base23, align 4
  %add.ptr39 = getelementptr i8, ptr %39, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %37) #6, !srcloc !151
  %40 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base23, align 4
  %add.ptr42 = getelementptr i8, ptr %41, i32 72
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #6, !srcloc !150
  %43 = and i32 %42, -234881025
  %44 = or i32 %43, 100663296
  %45 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base23, align 4
  %add.ptr48 = getelementptr i8, ptr %46, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %44) #6, !srcloc !151
  br label %sw.epilog

do.end51:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev52 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 2
  %47 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.32) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb
  %base54 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %49 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base54, align 4
  %add.ptr55 = getelementptr i8, ptr %50, i32 64
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #6, !srcloc !150
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base54, align 4
  %add.ptr61 = getelementptr i8, ptr %54, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %52) #6, !srcloc !151
  %55 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base54, align 4
  %add.ptr64 = getelementptr i8, ptr %56, i32 64
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #6, !srcloc !150
  %58 = or i32 %57, 33554432
  %59 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base54, align 4
  %add.ptr70 = getelementptr i8, ptr %60, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 %58) #6, !srcloc !151
  %61 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base54, align 4
  %add.ptr73 = getelementptr i8, ptr %62, i32 64
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #6, !srcloc !150
  %64 = or i32 %63, 67108864
  %65 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base54, align 4
  %add.ptr79 = getelementptr i8, ptr %66, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %64) #6, !srcloc !151
  %67 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base54, align 4
  %add.ptr82 = getelementptr i8, ptr %68, i32 64
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82) #6, !srcloc !150
  %70 = or i32 %69, 134217728
  %71 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base54, align 4
  %add.ptr88 = getelementptr i8, ptr %72, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 %70) #6, !srcloc !151
  %73 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base54, align 4
  %add.ptr91 = getelementptr i8, ptr %74, i32 64
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #6, !srcloc !150
  %76 = and i32 %75, -4097
  %77 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base54, align 4
  %add.ptr97 = getelementptr i8, ptr %78, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %76) #6, !srcloc !151
  %79 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base54, align 4
  %add.ptr100 = getelementptr i8, ptr %80, i32 68
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #6, !srcloc !150
  %ver = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 4
  %82 = or i32 %81, 4194304
  %83 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base54, align 4
  %add.ptr111 = getelementptr i8, ptr %84, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %82) #6, !srcloc !151
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %player, ptr noundef %runtime)
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  %85 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base54, align 4
  %add.ptr115 = getelementptr i8, ptr %86, i32 144
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #6, !srcloc !150
  %88 = and i32 %87, -50331649
  %89 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base54, align 4
  %add.ptr121 = getelementptr i8, ptr %90, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %88) #6, !srcloc !151
  %91 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base54, align 4
  %add.ptr124 = getelementptr i8, ptr %92, i32 64
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr124) #6, !srcloc !150
  %94 = and i32 %93, -268435457
  %95 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base54, align 4
  %add.ptr130 = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %94) #6, !srcloc !151
  %97 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base54, align 4
  %add.ptr133 = getelementptr i8, ptr %98, i32 64
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr133) #6, !srcloc !150
  %100 = and i32 %99, -1073741825
  %101 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base54, align 4
  %add.ptr139 = getelementptr i8, ptr %102, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 %100) #6, !srcloc !151
  %103 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base54, align 4
  %add.ptr142 = getelementptr i8, ptr %104, i32 64
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr142) #6, !srcloc !150
  %106 = or i32 %105, 2048
  %107 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base54, align 4
  %add.ptr148 = getelementptr i8, ptr %108, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr148, i32 %106) #6, !srcloc !151
  %109 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base54, align 4
  %add.ptr151 = getelementptr i8, ptr %110, i32 72
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #6, !srcloc !150
  %112 = or i32 %111, 65536
  %113 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base54, align 4
  %add.ptr157 = getelementptr i8, ptr %114, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %112) #6, !srcloc !151
  %stream_settings = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 18
  %115 = ptrtoint ptr %stream_settings to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %stream_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp158 = icmp eq i32 %116, 1
  %117 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %base54, align 4
  %add.ptr162 = getelementptr i8, ptr %118, i32 68
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #6
  br i1 %cmp158, label %if.then159, label %if.else

if.then159:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %120 = or i32 %119, 134217728
  %121 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base54, align 4
  %add.ptr177 = getelementptr i8, ptr %122, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %120) #6, !srcloc !151
  br label %if.end196

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %123 = and i32 %119, -134217729
  %124 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base54, align 4
  %add.ptr195 = getelementptr i8, ptr %125, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 %123) #6, !srcloc !151
  br label %if.end196

if.end196:                                        ; preds = %if.else, %if.then159
  %126 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base54, align 4
  %add.ptr199 = getelementptr i8, ptr %127, i32 72
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr199) #6, !srcloc !150
  %129 = and i32 %128, -917505
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 15
  %131 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %channels, align 8
  %133 = shl i32 %132, 8
  %shl205 = and i32 %133, 3584
  %or206 = or i32 %shl205, %130
  %134 = tail call i32 @llvm.bswap.i32(i32 %or206)
  %135 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base54, align 4
  %add.ptr208 = getelementptr i8, ptr %136, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr208, i32 %134) #6, !srcloc !151
  %137 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base54, align 4
  %add.ptr211 = getelementptr i8, ptr %138, i32 68
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #6, !srcloc !150
  %140 = and i32 %139, -268435457
  %141 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base54, align 4
  %add.ptr217 = getelementptr i8, ptr %142, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 %140) #6, !srcloc !151
  %143 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base54, align 4
  %add.ptr220 = getelementptr i8, ptr %144, i32 68
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #6, !srcloc !150
  %146 = and i32 %145, 534839295
  %147 = tail call i32 @llvm.bswap.i32(i32 %146)
  %148 = lshr i32 %div, 2
  %shl226 = and i32 %148, 8160
  %or227 = or i32 %147, %shl226
  %149 = tail call i32 @llvm.bswap.i32(i32 %or227)
  %150 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %base54, align 4
  %add.ptr229 = getelementptr i8, ptr %151, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr229, i32 %149) #6, !srcloc !151
  %152 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base54, align 4
  %add.ptr232 = getelementptr i8, ptr %153, i32 68
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr232) #6, !srcloc !150
  %155 = and i32 %154, -257
  %156 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base54, align 4
  %add.ptr247 = getelementptr i8, ptr %157, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr247, i32 %155) #6, !srcloc !151
  %158 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %159)
  %cmp249 = icmp slt i32 %159, 5
  %160 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base54, align 4
  %add.ptr253 = getelementptr i8, ptr %161, i32 68
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr253) #6
  br i1 %cmp249, label %if.then250, label %if.else260

if.then250:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  %163 = and i32 %162, -513
  %164 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base54, align 4
  %add.ptr259 = getelementptr i8, ptr %165, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr259, i32 %163) #6, !srcloc !151
  br label %cleanup

if.else260:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #8
  %166 = or i32 %162, 512
  %167 = ptrtoint ptr %base54 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base54, align 4
  %add.ptr269 = getelementptr i8, ptr %168, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr269, i32 %166) #6, !srcloc !151
  br label %cleanup

cleanup:                                          ; preds = %if.else260, %if.then250, %do.end51, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end51 ], [ 0, %if.else260 ], [ 0, %if.then250 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uni_player_set_channel_status(ptr nocapture noundef %player, ptr noundef readonly %runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %runtime, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %runtime, i32 0, i32 14
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %1, label %sw.default [
    i32 22050, label %if.then.if.end.sink.split_crit_edge
    i32 44100, label %sw.bb2
    i32 88200, label %sw.bb7
    i32 176400, label %sw.bb12
    i32 24000, label %sw.bb17
    i32 48000, label %sw.bb22
    i32 96000, label %sw.bb27
    i32 192000, label %sw.bb32
    i32 32000, label %sw.bb37
  ]

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb17:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb22:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb27:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb32:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.bb37:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.default, %sw.bb37, %sw.bb32, %sw.bb27, %sw.bb22, %sw.bb17, %sw.bb12, %sw.bb7, %sw.bb2, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i8 [ 0, %sw.bb2 ], [ 8, %sw.bb7 ], [ 12, %sw.bb12 ], [ 6, %sw.bb17 ], [ 2, %sw.bb22 ], [ 10, %sw.bb27 ], [ 14, %sw.bb32 ], [ 3, %sw.bb37 ], [ 1, %sw.default ], [ 4, %if.then.if.end.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %entry.if.end_crit_edge
  %stream_settings46 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 18
  %iec95847 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %iec95847 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iec95847, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool50.not = icmp eq i8 %6, 0
  %not.tobool50.not = xor i1 %tobool50.not, true
  %. = zext i1 %not.tobool50.not to i32
  %7 = ptrtoint ptr %stream_settings46 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %stream_settings46, align 4
  %base = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6
  br i1 %tobool50.not, label %if.then59, label %if.else63

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = and i32 %10, -50331649
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr62 = getelementptr i8, ptr %13, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %11) #6, !srcloc !151
  br label %if.end73

if.else63:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %14 = or i32 %10, 50331648
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr72 = getelementptr i8, ptr %16, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 %14) #6, !srcloc !151
  br label %if.end73

if.end73:                                         ; preds = %if.else63, %if.then59
  %base108 = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 10
  %17 = ptrtoint ptr %iec95847 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iec95847, align 1
  %19 = and i8 %18, 15
  %and81 = zext i8 %19 to i32
  %arrayidx87 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv88, 8
  %or89 = or i32 %shl, %and81
  %arrayidx95 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %23 to i32
  %shl97 = shl nuw nsw i32 %conv96, 16
  %or98 = or i32 %or89, %shl97
  %arrayidx104 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx104, align 1
  %conv105 = zext i8 %25 to i32
  %shl106 = shl nuw i32 %conv105, 24
  %or107 = or i32 %or98, %shl106
  %26 = tail call i32 @llvm.bswap.i32(i32 %or107)
  %27 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base108, align 4
  %add.ptr111 = getelementptr i8, ptr %28, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 %26) #6, !srcloc !151
  %arrayidx79.1 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx79.1, align 1
  %31 = and i8 %30, 15
  %and81.1 = zext i8 %31 to i32
  %arrayidx87.1 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx87.1, align 1
  %conv88.1 = zext i8 %33 to i32
  %shl.1 = shl nuw nsw i32 %conv88.1, 8
  %or89.1 = or i32 %shl.1, %and81.1
  %arrayidx95.1 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 6
  %34 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx95.1, align 1
  %conv96.1 = zext i8 %35 to i32
  %shl97.1 = shl nuw nsw i32 %conv96.1, 16
  %or98.1 = or i32 %or89.1, %shl97.1
  %arrayidx104.1 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx104.1, align 1
  %conv105.1 = zext i8 %37 to i32
  %shl106.1 = shl nuw i32 %conv105.1, 24
  %or107.1 = or i32 %or98.1, %shl106.1
  %38 = tail call i32 @llvm.bswap.i32(i32 %or107.1)
  %39 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base108, align 4
  %add.ptr111.1 = getelementptr i8, ptr %40, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.1, i32 %38) #6, !srcloc !151
  %arrayidx79.2 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 8
  %41 = ptrtoint ptr %arrayidx79.2 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx79.2, align 1
  %43 = and i8 %42, 15
  %and81.2 = zext i8 %43 to i32
  %arrayidx87.2 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 9
  %44 = ptrtoint ptr %arrayidx87.2 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx87.2, align 1
  %conv88.2 = zext i8 %45 to i32
  %shl.2 = shl nuw nsw i32 %conv88.2, 8
  %or89.2 = or i32 %shl.2, %and81.2
  %arrayidx95.2 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 10
  %46 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx95.2, align 1
  %conv96.2 = zext i8 %47 to i32
  %shl97.2 = shl nuw nsw i32 %conv96.2, 16
  %or98.2 = or i32 %or89.2, %shl97.2
  %arrayidx104.2 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 11
  %48 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx104.2, align 1
  %conv105.2 = zext i8 %49 to i32
  %shl106.2 = shl nuw i32 %conv105.2, 24
  %or107.2 = or i32 %or98.2, %shl106.2
  %50 = tail call i32 @llvm.bswap.i32(i32 %or107.2)
  %51 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base108, align 4
  %add.ptr111.2 = getelementptr i8, ptr %52, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.2, i32 %50) #6, !srcloc !151
  %arrayidx79.3 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 12
  %53 = ptrtoint ptr %arrayidx79.3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx79.3, align 1
  %55 = and i8 %54, 15
  %and81.3 = zext i8 %55 to i32
  %arrayidx87.3 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 13
  %56 = ptrtoint ptr %arrayidx87.3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx87.3, align 1
  %conv88.3 = zext i8 %57 to i32
  %shl.3 = shl nuw nsw i32 %conv88.3, 8
  %or89.3 = or i32 %shl.3, %and81.3
  %arrayidx95.3 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 14
  %58 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx95.3, align 1
  %conv96.3 = zext i8 %59 to i32
  %shl97.3 = shl nuw nsw i32 %conv96.3, 16
  %or98.3 = or i32 %or89.3, %shl97.3
  %arrayidx104.3 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 15
  %60 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx104.3, align 1
  %conv105.3 = zext i8 %61 to i32
  %shl106.3 = shl nuw i32 %conv105.3, 24
  %or107.3 = or i32 %or98.3, %shl106.3
  %62 = tail call i32 @llvm.bswap.i32(i32 %or107.3)
  %63 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base108, align 4
  %add.ptr111.3 = getelementptr i8, ptr %64, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.3, i32 %62) #6, !srcloc !151
  %arrayidx79.4 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 16
  %65 = ptrtoint ptr %arrayidx79.4 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx79.4, align 1
  %67 = and i8 %66, 15
  %and81.4 = zext i8 %67 to i32
  %arrayidx87.4 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 17
  %68 = ptrtoint ptr %arrayidx87.4 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx87.4, align 1
  %conv88.4 = zext i8 %69 to i32
  %shl.4 = shl nuw nsw i32 %conv88.4, 8
  %or89.4 = or i32 %shl.4, %and81.4
  %arrayidx95.4 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 18
  %70 = ptrtoint ptr %arrayidx95.4 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx95.4, align 1
  %conv96.4 = zext i8 %71 to i32
  %shl97.4 = shl nuw nsw i32 %conv96.4, 16
  %or98.4 = or i32 %or89.4, %shl97.4
  %arrayidx104.4 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 19
  %72 = ptrtoint ptr %arrayidx104.4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx104.4, align 1
  %conv105.4 = zext i8 %73 to i32
  %shl106.4 = shl nuw i32 %conv105.4, 24
  %or107.4 = or i32 %or98.4, %shl106.4
  %74 = tail call i32 @llvm.bswap.i32(i32 %or107.4)
  %75 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base108, align 4
  %add.ptr111.4 = getelementptr i8, ptr %76, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.4, i32 %74) #6, !srcloc !151
  %arrayidx79.5 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 20
  %77 = ptrtoint ptr %arrayidx79.5 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx79.5, align 1
  %79 = and i8 %78, 15
  %and81.5 = zext i8 %79 to i32
  %arrayidx87.5 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 21
  %80 = ptrtoint ptr %arrayidx87.5 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx87.5, align 1
  %conv88.5 = zext i8 %81 to i32
  %shl.5 = shl nuw nsw i32 %conv88.5, 8
  %or89.5 = or i32 %shl.5, %and81.5
  %arrayidx95.5 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 22
  %82 = ptrtoint ptr %arrayidx95.5 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx95.5, align 1
  %conv96.5 = zext i8 %83 to i32
  %shl97.5 = shl nuw nsw i32 %conv96.5, 16
  %or98.5 = or i32 %or89.5, %shl97.5
  %arrayidx104.5 = getelementptr %struct.uniperif, ptr %player, i32 0, i32 18, i32 1, i32 0, i32 23
  %84 = ptrtoint ptr %arrayidx104.5 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx104.5, align 1
  %conv105.5 = zext i8 %85 to i32
  %shl106.5 = shl nuw i32 %conv105.5, 24
  %or107.5 = or i32 %or98.5, %shl106.5
  %86 = tail call i32 @llvm.bswap.i32(i32 %or107.5)
  %87 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base108, align 4
  %add.ptr111.5 = getelementptr i8, ptr %88, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.5, i32 %86) #6, !srcloc !151
  %ver = getelementptr inbounds %struct.uniperif, ptr %player, i32 0, i32 4
  %89 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %90)
  %cmp112 = icmp slt i32 %90, 5
  %91 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base108, align 4
  br i1 %cmp112, label %if.then114, label %if.else133

if.then114:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr117 = getelementptr i8, ptr %92, i32 64
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr117) #6, !srcloc !150
  %94 = or i32 %93, 256
  %95 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base108, align 4
  %add.ptr132 = getelementptr i8, ptr %96, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %94) #6, !srcloc !151
  br label %if.end140

if.else133:                                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr139 = getelementptr i8, ptr %92, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 33554432) #6, !srcloc !151
  br label %if.end140

if.end140:                                        ; preds = %if.else133, %if.then114
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regmap_field_alloc(ptr noundef, [5 x i32]) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @uni_player_ctl_iec958_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 5, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_ctl_iec958_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni, align 4
  %iec9581 = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 18, i32 1
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  %8 = ptrtoint ptr %iec9581 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iec9581, align 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %value, align 8
  %arrayidx5 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx5, align 1
  %arrayidx8 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx8, align 1
  %arrayidx10 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %arrayidx13 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx13, align 2
  %arrayidx15 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx15, align 1
  %arrayidx18 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx18, align 1
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_player_ctl_iec958_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni, align 4
  %iec9581 = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 18, i32 1
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %value, align 8
  %10 = ptrtoint ptr %iec9581 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %iec9581, align 1
  %arrayidx6 = getelementptr [24 x i8], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx8, align 1
  %arrayidx11 = getelementptr [24 x i8], ptr %value, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 2
  %arrayidx13 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx13, align 1
  %arrayidx16 = getelementptr [24 x i8], ptr %value, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx16, align 1
  %arrayidx18 = getelementptr %struct.uniperif, ptr %7, i32 0, i32 18, i32 1, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx18, align 1
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 7
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #6
  %substream = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 17
  %20 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %7, ptr noundef nonnull %23)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call fastcc void @uni_player_set_channel_status(ptr noundef %7, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call21) #6
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -999999, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1000000, ptr %max, align 4
  %step = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %step to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %step, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni, align 4
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  %clk_adj = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %clk_adj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_adj, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_sti_clk_adjustment_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %uni = getelementptr inbounds %struct.sti_uniperiph_data, ptr %5, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %uni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uni, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %10 = add i32 %9, -1000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000000, i32 %10)
  %11 = icmp ult i32 %10, -2000000
  br i1 %11, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ctrl_lock = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #6
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value, align 8
  %clk_adj = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 15
  %14 = ptrtoint ptr %clk_adj to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %clk_adj, align 4
  %mclk = getelementptr inbounds %struct.uniperif, ptr %7, i32 0, i32 14
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call fastcc i32 @uni_player_clk_set_rate(ptr noundef %7, i32 noundef %16)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6 ], [ 0, %if.end.if.end9_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !72, !73, !74, !75, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sti/uniperif_player.c", i32 960, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uni_player_resume._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uni_player_resume._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_uni_player_resume, !9, !"__ksymtab_uni_player_resume", i1 false, i1 false}
!9 = !{!"../sound/soc/sti/uniperif_player.c", i32 974, i32 1}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/sti/uniperif_player.c", i32 1061, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @uni_player_init._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @uni_player_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sti/uniperif_player.c", i32 1077, i32 3}
!17 = !{ptr @uni_player_init._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @uni_player_init._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @uni_player_init._entry.10, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../sound/soc/sti/uniperif_player.c", i32 1085, i32 4}
!21 = !{ptr @uni_player_init._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/sti/uniperif_player.c", i32 1097, i32 4}
!24 = !{ptr @uni_player_init._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @uni_player_init._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/sti/uniperif_player.c", i32 1107, i32 3}
!28 = !{ptr @uni_player_init._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @uni_player_init._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @uni_player_init.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../sound/soc/sti/uniperif_player.c", i32 1111, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @uni_player_init.__key.19, !34, !"__key", i1 false, i1 false}
!34 = !{!"../sound/soc/sti/uniperif_player.c", i32 1112, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @__ksymtab_uni_player_init, !37, !"__ksymtab_uni_player_init", i1 false, i1 false}
!37 = !{!"../sound/soc/sti/uniperif_player.c", i32 1148, i32 1}
!38 = !{ptr @uni_player_dai_ops, !39, !"uni_player_dai_ops", i1 false, i1 false}
!39 = !{!"../sound/soc/sti/uniperif_player.c", i32 1037, i32 37}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/sti/uniperif_player.c", i32 929, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @uni_player_stop._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @uni_player_stop._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sti/uniperif_player.c", i32 757, i32 3}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @uni_player_prepare._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @uni_player_prepare._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/sti/uniperif_player.c", i32 786, i32 3}
!52 = !{ptr @uni_player_prepare._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @uni_player_prepare._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/sti/uniperif_player.c", i32 808, i32 3}
!56 = !{ptr @uni_player_prepare._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @uni_player_prepare._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/sti/uniperif_player.c", i32 848, i32 3}
!60 = !{ptr @uni_player_prepare._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @uni_player_prepare._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/sti/uniperif_player.c", i32 322, i32 3}
!64 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @uni_player_prepare_iec958._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @uni_player_prepare_iec958._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @uni_player_prepare_iec958._entry.36, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../sound/soc/sti/uniperif_player.c", i32 345, i32 3}
!69 = !{ptr @uni_player_prepare_iec958._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/sti/uniperif_player.c", i32 436, i32 3}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @uni_player_prepare_pcm._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @uni_player_prepare_pcm._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @uni_player_prepare_pcm._entry.40, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../sound/soc/sti/uniperif_player.c", i32 441, i32 3}
!77 = !{ptr @uni_player_prepare_pcm._entry_ptr.41, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/sti/uniperif_player.c", i32 459, i32 3}
!80 = !{ptr @uni_player_prepare_pcm._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @uni_player_prepare_pcm._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @uni_player_prepare_pcm._entry.45, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../sound/soc/sti/uniperif_player.c", i32 479, i32 3}
!84 = !{ptr @uni_player_prepare_pcm._entry_ptr.46, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/sti/uniperif_player.c", i32 492, i32 3}
!87 = !{ptr @uni_player_prepare_pcm._entry.47, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @uni_player_prepare_pcm._entry_ptr.49, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/sti/uniperif_player.c", i32 864, i32 3}
!91 = !{ptr @uni_player_start._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @uni_player_start._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/sti/uniperif_player.c", i32 870, i32 3}
!95 = !{ptr @uni_player_start._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @uni_player_start._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/sti/uniperif_player.c", i32 1024, i32 49}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/sti/uniperif_player.c", i32 1027, i32 3}
!101 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @uni_player_parse_dt_audio_glue._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @uni_player_parse_dt_audio_glue._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @uni_tdm_hw, !105, !"uni_tdm_hw", i1 false, i1 false}
!105 = !{!"../sound/soc/sti/uniperif.h", i32 1351, i32 53}
!106 = !{ptr @uni_player_pcm_hw, !107, !"uni_player_pcm_hw", i1 false, i1 false}
!107 = !{!"../sound/soc/sti/uniperif_player.c", i32 35, i32 38}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/sti/uniperif_player.c", i32 82, i32 3}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @uni_player_irq_handler._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @uni_player_irq_handler._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/sti/uniperif_player.c", i32 102, i32 3}
!115 = !{ptr @uni_player_irq_handler._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @uni_player_irq_handler._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/sti/uniperif_player.c", i32 116, i32 4}
!119 = !{ptr @uni_player_irq_handler._entry.62, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @uni_player_irq_handler._entry_ptr.64, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/sti/uniperif_player.c", i32 123, i32 3}
!123 = !{ptr @.str.66, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @uni_player_irq_handler.__UNIQUE_ID_ddebug240, !122, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!125 = !{ptr @.str.68, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/sti/uniperif_player.c", i32 138, i32 3}
!127 = !{ptr @uni_player_irq_handler._entry.67, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @uni_player_irq_handler._entry_ptr.69, !126, !"_entry_ptr", i1 false, i1 false}
!129 = distinct !{null, !130, !"snd_sti_iec_ctl", i1 false, i1 false}
!130 = !{!"../sound/soc/sti/uniperif_player.c", i32 686, i32 33}
!131 = !{ptr @.str.70, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/sti/uniperif_player.c", i32 617, i32 10}
!133 = !{ptr @uni_player_iec958_ctl, !134, !"uni_player_iec958_ctl", i1 false, i1 false}
!134 = !{!"../sound/soc/sti/uniperif_player.c", i32 615, i32 32}
!135 = !{ptr @.str.71, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/sti/uniperif_player.c", i32 676, i32 10}
!137 = !{ptr @uni_player_clk_adj_ctl, !138, !"uni_player_clk_adj_ctl", i1 false, i1 false}
!138 = !{!"../sound/soc/sti/uniperif_player.c", i32 674, i32 32}
!139 = distinct !{null, !140, !"snd_sti_pcm_ctl", i1 false, i1 false}
!140 = !{!"../sound/soc/sti/uniperif_player.c", i32 682, i32 33}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{i64 5114286}
!151 = !{i64 5113868}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2148751881, i64 2148751886, i64 2148751899, i64 2148751943, i64 2148751977, i64 2148751998}
