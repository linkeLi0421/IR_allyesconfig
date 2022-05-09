; ModuleID = '/llk/IR_all_yes/sound/soc/sti/uniperif_reader.c_pt.bc'
source_filename = "../sound/soc/sti/uniperif_reader.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+uni_reader_init\22, \22a\22\09"
module asm "\09.weak\09__crc_uni_reader_init\09\09\09\09"
module asm "\09.long\09__crc_uni_reader_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_uni_reader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22uni_reader_init\22\09\09\09\09\09"
module asm "__kstrtabns_uni_reader_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniperif = type { i32, i32, ptr, i32, i32, ptr, ptr, %struct.spinlock, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.uniperif_iec958_settings, %struct.mutex, ptr, i32, i32, %struct.dai_tdm_slot, ptr }
%struct.uniperif_iec958_settings = type { i32, %struct.snd_aes_iec958 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.dai_tdm_slot = type { i32, i32, i32, i32 }
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

@uni_reader_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @sti_uniperiph_dai_set_fmt, ptr null, ptr @sti_uniperiph_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uni_reader_startup, ptr @uni_reader_shutdown, ptr @sti_uniperiph_dai_hw_params, ptr null, ptr @uni_reader_prepare, ptr @uni_reader_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@uni_tdm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 48000, i32 1, i32 32, i32 1048576, i32 128, i32 262144, i32 2, i32 10, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uni_reader_pcm_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 590083, i64 1028, i32 1073741824, i32 8000, i32 96000, i32 2, i32 8, i32 1048576, i32 128, i32 262144, i32 2, i32 48, i32 0 }, [32 x i8] zeroinitializer }, align 32
@uni_reader_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uni_reader_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/sti/uniperif_reader.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@uni_reader_init._entry_ptr = internal global ptr @uni_reader_init._entry, section ".printk_index", align 4
@uni_reader_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&reader->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_uni_reader_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_uni_reader_init = external dso_local constant [0 x i8], align 1
@__ksymtab_uni_reader_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @uni_reader_init to i32), ptr @__kstrtab_uni_reader_init, ptr @__kstrtabns_uni_reader_init }, section "___ksymtab_gpl+uni_reader_init", align 4
@uni_reader_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: invalid reader state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uni_reader_stop\00", [16 x i8] zeroinitializer }, align 32
@uni_reader_stop._entry_ptr = internal global ptr @uni_reader_stop._entry, section ".printk_index", align 4
@uni_reader_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: invalid reader state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"uni_reader_prepare\00", [45 x i8] zeroinitializer }, align 32
@uni_reader_prepare._entry_ptr = internal global ptr @uni_reader_prepare._entry, section ".printk_index", align 4
@uni_reader_prepare._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid trigger limit %d\0A\00", [38 x i8] zeroinitializer }, align 32
@uni_reader_prepare._entry_ptr.12 = internal global ptr @uni_reader_prepare._entry.10, section ".printk_index", align 4
@uni_reader_prepare._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 253, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"format not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@uni_reader_prepare._entry_ptr.15 = internal global ptr @uni_reader_prepare._entry.13, section ".printk_index", align 4
@__const.uni_reader_prepare_tdm.word_pos = private unnamed_addr constant [4 x i32] [i32 67502082, i32 202246154, i32 336990226, i32 471734298], align 4
@uni_reader_prepare_pcm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 112, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"subframe format not supported\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uni_reader_prepare_pcm\00", [41 x i8] zeroinitializer }, align 32
@uni_reader_prepare_pcm._entry_ptr = internal global ptr @uni_reader_prepare_pcm._entry, section ".printk_index", align 4
@uni_reader_prepare_pcm._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.17, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@uni_reader_prepare_pcm._entry_ptr.19 = internal global ptr @uni_reader_prepare_pcm._entry.18, section ".printk_index", align 4
@uni_reader_prepare_pcm._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: invalid nb of channels\0A\00", [36 x i8] zeroinitializer }, align 32
@uni_reader_prepare_pcm._entry_ptr.22 = internal global ptr @uni_reader_prepare_pcm._entry.20, section ".printk_index", align 4
@uni_reader_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.23, ptr @.str.2, i32 301, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"uni_reader_start\00", [47 x i8] zeroinitializer }, align 32
@uni_reader_start._entry_ptr = internal global ptr @uni_reader_start._entry, section ".printk_index", align 4
@uni_reader_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 56, ptr @.str.26, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"unexpected IRQ\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uni_reader_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@uni_reader_irq_handler._entry_ptr = internal global ptr @uni_reader_irq_handler._entry, section ".printk_index", align 4
@uni_reader_irq_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.2, i32 66, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FIFO error detected\0A\00", [43 x i8] zeroinitializer }, align 32
@uni_reader_irq_handler._entry_ptr.29 = internal global ptr @uni_reader_irq_handler._entry.27, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"uni_reader_dai_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 400, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"uni_tdm_hw\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../sound/soc/sti/uniperif.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 1351, i32 53 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"uni_reader_pcm_hw\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 17, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 428, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 432, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 321, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 196, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 225, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 253, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 112, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 132, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 139, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 301, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 56, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [35 x i8] c"../sound/soc/sti/uniperif_reader.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 66, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__ksymtab_uni_reader_init, ptr @uni_reader_init._entry, ptr @uni_reader_init._entry_ptr, ptr @uni_reader_irq_handler._entry, ptr @uni_reader_irq_handler._entry.27, ptr @uni_reader_irq_handler._entry_ptr, ptr @uni_reader_irq_handler._entry_ptr.29, ptr @uni_reader_prepare._entry, ptr @uni_reader_prepare._entry.10, ptr @uni_reader_prepare._entry.13, ptr @uni_reader_prepare._entry_ptr, ptr @uni_reader_prepare._entry_ptr.12, ptr @uni_reader_prepare._entry_ptr.15, ptr @uni_reader_prepare_pcm._entry, ptr @uni_reader_prepare_pcm._entry.18, ptr @uni_reader_prepare_pcm._entry.20, ptr @uni_reader_prepare_pcm._entry_ptr, ptr @uni_reader_prepare_pcm._entry_ptr.19, ptr @uni_reader_prepare_pcm._entry_ptr.22, ptr @uni_reader_start._entry, ptr @uni_reader_start._entry_ptr, ptr @uni_reader_stop._entry, ptr @uni_reader_stop._entry_ptr, ptr @uni_reader_dai_ops, ptr @uni_tdm_hw, ptr @uni_reader_pcm_hw, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @uni_reader_init.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_tdm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_pcm_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare_pcm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare_pcm._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_prepare_pcm._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uni_reader_irq_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @uni_reader_init(ptr noundef %pdev, ptr noundef %reader) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %dev1 = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 4
  %state = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 16
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 4
  %dai_ops = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 24
  %2 = ptrtoint ptr %dai_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uni_reader_dai_ops, ptr %dai_ops, align 4
  %3 = ptrtoint ptr %reader to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reader, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp = icmp eq i32 %4, 8
  %spec.select = select i1 %cmp, ptr @uni_tdm_hw, ptr @uni_reader_pcm_hw
  %5 = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select, ptr %5, align 4
  %irq = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 12
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @uni_reader_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %reader) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %do.end, label %do.body10

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #8
  br label %cleanup

do.body10:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %reader, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @uni_reader_init.__key, i16 noundef signext 3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.body10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_reader_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #5
  %substream = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 17
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.irq_spin_unlock_crit_edge, label %if.end

entry.irq_spin_unlock_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_spin_unlock

if.end:                                           ; preds = %entry
  tail call void @snd_pcm_stream_lock(ptr noundef nonnull %1) #5
  %state = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.24) #8
  br label %stream_unlock

if.end3:                                          ; preds = %if.end
  %base = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 10
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !72
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %8) #5, !srcloc !73
  %ver = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 4
  %12 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp6 = icmp slt i32 %13, 5
  %shl = select i1 %cmp6, i32 1, i32 256
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end3.stream_unlock_crit_edge, label %do.end13, !prof !74

if.end3.stream_unlock_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %stream_unlock

do.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %dev14 = getelementptr inbounds %struct.uniperif, ptr %dev_id, i32 0, i32 2
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.28) #8
  %16 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %substream, align 4
  %call16 = tail call i32 @snd_pcm_stop_xrun(ptr noundef %17) #5
  br label %stream_unlock

stream_unlock:                                    ; preds = %do.end13, %if.end3.stream_unlock_crit_edge, %do.end
  %ret.0 = phi i32 [ 0, %do.end ], [ 1, %do.end13 ], [ 0, %if.end3.stream_unlock_crit_edge ]
  %18 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_stream_unlock(ptr noundef %19) #5
  br label %irq_spin_unlock

irq_spin_unlock:                                  ; preds = %stream_unlock, %entry.irq_spin_unlock_crit_edge
  %ret.1 = phi i32 [ %ret.0, %stream_unlock ], [ 0, %entry.irq_spin_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #5
  ret i32 %ret.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_set_fmt(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_reader_startup(ptr noundef %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %substream6 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %substream6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %substream, ptr %substream6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #5
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp8 = icmp eq i32 %8, 8
  br i1 %cmp8, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %9 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime, align 4
  %call10 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %10, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @sti_uniperiph_fix_tdm_chan, ptr noundef %5, i32 noundef 10, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %call16 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %12, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @sti_uniperiph_fix_tdm_format, ptr noundef %5, i32 noundef 1, i32 noundef -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uni_reader_shutdown(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #5
  %state = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not = icmp eq i32 %7, 0
  br i1 %cmp6.not, label %entry.if.end_crit_edge, label %uni_reader_stop.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

uni_reader_stop.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !72
  %11 = and i32 %10, -117440513
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %11) #5, !srcloc !73
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !72
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %18, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %16) #5, !srcloc !73
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %uni_reader_stop.exit, %entry.if.end_crit_edge
  %substream9 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 17
  %20 = ptrtoint ptr %substream9 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %substream9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_dai_hw_params(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_reader_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  %word_pos.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %9) #8
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
  call void @__sanitizer_cov_trace_pc() #7
  %format.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %16 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %format.i, align 4
  %call.i = tail call i32 @snd_pcm_format_width(i32 noundef %17) #5
  %mul.i = mul i32 %call.i, %15
  %div309310 = lshr i32 %mul.i, 5
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %mul = shl i32 %15, 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4
  %transfer_size.0 = phi i32 [ %div309310, %if.then4 ], [ %mul, %if.else ]
  %ver = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %19)
  %cmp7 = icmp slt i32 %19, 5
  %sub = sub i32 70, %transfer_size.0
  %trigger_limit.0 = select i1 %cmp7, i32 %sub, i32 %transfer_size.0
  %20 = zext i32 %trigger_limit.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %trigger_limit.0, label %land.lhs.true [
    i32 0, label %if.end6.do.end20_crit_edge
    i32 1, label %if.end6.if.end22_crit_edge
  ]

if.end6.if.end22_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end6.do.end20_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true.do.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end20

do.end20:                                         ; preds = %land.lhs.true.do.end20_crit_edge, %if.end6.do.end20_crit_edge
  %dev21 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %22 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.11, i32 noundef %trigger_limit.0) #8
  br label %cleanup

if.end22:                                         ; preds = %land.lhs.true.if.end22_crit_edge, %if.end6.if.end22_crit_edge
  %base = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !72
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
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %29) #5, !srcloc !73
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp28 = icmp eq i32 %33, 8
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %word_pos.i) #5
  %34 = call ptr @memcpy(ptr %word_pos.i, ptr @__const.uni_reader_prepare_tdm.word_pos, i32 16)
  %channels.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %35 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channels.i.i, align 8
  %format.i.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %37 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %format.i.i, align 4
  %call.i.i = tail call i32 @snd_pcm_format_width(i32 noundef %38) #5
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 64
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !72
  %42 = and i32 %41, -536870913
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %42) #5, !srcloc !73
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr6.i = getelementptr i8, ptr %46, i32 72
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #5, !srcloc !72
  %48 = and i32 %47, -234881025
  %49 = or i32 %48, 167772160
  %50 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base, align 4
  %add.ptr12.i = getelementptr i8, ptr %51, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %49) #5, !srcloc !73
  %52 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base, align 4
  %add.ptr15.i = getelementptr i8, ptr %53, i32 72
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !72
  %55 = and i32 %54, -917505
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #5
  %mul.i.i = shl i32 %36, 3
  %57 = mul i32 %mul.i.i, %call.i.i
  %shl.i = and i32 %57, 3584
  %or21.i = or i32 %56, %shl.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #5
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr23.i = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %58) #5, !srcloc !73
  %61 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base, align 4
  %add.ptr26.i = getelementptr i8, ptr %62, i32 72
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #5, !srcloc !72
  %64 = or i32 %63, 65536
  %65 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base, align 4
  %add.ptr32.i = getelementptr i8, ptr %66, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %64) #5, !srcloc !73
  %67 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base, align 4
  %add.ptr35.i = getelementptr i8, ptr %68, i32 72
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #5, !srcloc !72
  %70 = and i32 %69, 2147483647
  %71 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base, align 4
  %add.ptr41.i = getelementptr i8, ptr %72, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41.i, i32 %70) #5, !srcloc !73
  %73 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base, align 4
  %add.ptr44.i = getelementptr i8, ptr %74, i32 280
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #5, !srcloc !72
  %76 = or i32 %75, 16777216
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr50.i = getelementptr i8, ptr %78, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %76) #5, !srcloc !73
  %call51.i = call i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef %5, ptr noundef nonnull %word_pos.i) #5
  %79 = ptrtoint ptr %word_pos.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %word_pos.i, align 4
  %81 = call i32 @llvm.bswap.i32(i32 %80) #5
  %82 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base, align 4
  %add.ptr53.i = getelementptr i8, ptr %83, i32 316
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %81) #5, !srcloc !73
  %arrayidx54.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx54.i, align 4
  %86 = call i32 @llvm.bswap.i32(i32 %85) #5
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 4
  %add.ptr56.i = getelementptr i8, ptr %88, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %86) #5, !srcloc !73
  %arrayidx57.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx57.i, align 4
  %91 = call i32 @llvm.bswap.i32(i32 %90) #5
  %92 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base, align 4
  %add.ptr59.i = getelementptr i8, ptr %93, i32 324
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %91) #5, !srcloc !73
  %arrayidx60.i = getelementptr inbounds [4 x i32], ptr %word_pos.i, i32 0, i32 3
  %94 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx60.i, align 4
  %96 = call i32 @llvm.bswap.i32(i32 %95) #5
  %97 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base, align 4
  %add.ptr62.i = getelementptr i8, ptr %98, i32 328
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %96) #5, !srcloc !73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %word_pos.i) #5
  br label %if.end36

if.else31:                                        ; preds = %if.end22
  %daifmt.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 22
  %99 = ptrtoint ptr %daifmt.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %daifmt.i, align 4
  %and.i = and i32 %100, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1
  br i1 %cmp.i, label %if.else31.sw.bb1.i_crit_edge, label %if.else.i

if.else31.sw.bb1.i_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

if.else.i:                                        ; preds = %if.else31
  %format.i299 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %101 = ptrtoint ptr %format.i299 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %format.i299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cond.i = icmp eq i32 %102, 2
  br i1 %cond.i, label %sw.bb14.i, label %if.else.i.sw.bb1.i_crit_edge

if.else.i.sw.bb1.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1.i

sw.bb1.i:                                         ; preds = %if.else.i.sw.bb1.i_crit_edge, %if.else31.sw.bb1.i_crit_edge
  %103 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base, align 4
  %add.ptr.i301 = getelementptr i8, ptr %104, i32 72
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301) #5, !srcloc !72
  %106 = and i32 %105, -16777217
  %107 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %108, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %106) #5, !srcloc !73
  %109 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %110, i32 72
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #5, !srcloc !72
  %112 = and i32 %111, -234881025
  %113 = or i32 %112, 167772160
  %114 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %base, align 4
  %add.ptr13.i = getelementptr i8, ptr %115, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %113) #5, !srcloc !73
  br label %sw.epilog34.i

sw.bb14.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %116 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %117, i32 72
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #5, !srcloc !72
  %119 = or i32 %118, 16777216
  %120 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base, align 4
  %add.ptr23.i302 = getelementptr i8, ptr %121, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i302, i32 %119) #5, !srcloc !73
  %122 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base, align 4
  %add.ptr26.i303 = getelementptr i8, ptr %123, i32 72
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i303) #5, !srcloc !72
  %125 = and i32 %124, -234881025
  %126 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base, align 4
  %add.ptr32.i304 = getelementptr i8, ptr %127, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i304, i32 %125) #5, !srcloc !73
  br label %sw.epilog34.i

sw.epilog34.i:                                    ; preds = %sw.bb14.i, %sw.bb1.i
  %format35.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 12
  %128 = ptrtoint ptr %format35.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %format35.i, align 4
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %129, label %do.end59.i [
    i32 2, label %sw.bb36.i
    i32 10, label %sw.bb46.i
  ]

sw.bb36.i:                                        ; preds = %sw.epilog34.i
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base, align 4
  %add.ptr39.i = getelementptr i8, ptr %132, i32 64
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #5, !srcloc !72
  %134 = or i32 %133, 536870912
  %135 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base, align 4
  %add.ptr45.i = getelementptr i8, ptr %136, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %134) #5, !srcloc !73
  br label %sw.epilog61.i

sw.bb46.i:                                        ; preds = %sw.epilog34.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base, align 4
  %add.ptr49.i = getelementptr i8, ptr %138, i32 64
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #5, !srcloc !72
  %140 = and i32 %139, -536870913
  %141 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base, align 4
  %add.ptr55.i = getelementptr i8, ptr %142, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %140) #5, !srcloc !73
  br label %sw.epilog61.i

do.end59.i:                                       ; preds = %sw.epilog34.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev60.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %143 = ptrtoint ptr %dev60.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev60.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.14) #8
  br label %cleanup

sw.epilog61.i:                                    ; preds = %sw.bb46.i, %sw.bb36.i
  %channels.i305 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %7, i32 0, i32 15
  %145 = ptrtoint ptr %channels.i305 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %channels.i305, align 8
  %rem.i = and i32 %146, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp ne i32 %rem.i, 0
  %147 = add i32 %146, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9, i32 %147)
  %148 = icmp ult i32 %147, -9
  %149 = or i1 %148, %tobool.not.i
  br i1 %149, label %do.end70.i, label %if.end72.i

do.end70.i:                                       ; preds = %sw.epilog61.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev71.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %150 = ptrtoint ptr %dev71.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev71.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end72.i:                                       ; preds = %sw.epilog61.i
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base, align 4
  %add.ptr75.i = getelementptr i8, ptr %153, i32 72
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #5, !srcloc !72
  %155 = and i32 %154, -917505
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #5
  %157 = ptrtoint ptr %channels.i305 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %channels.i305, align 8
  %159 = shl i32 %158, 8
  %shl.i306 = and i32 %159, 3584
  %or81.i = or i32 %shl.i306, %156
  %160 = tail call i32 @llvm.bswap.i32(i32 %or81.i) #5
  %161 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %base, align 4
  %add.ptr83.i = getelementptr i8, ptr %162, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83.i, i32 %160) #5, !srcloc !73
  %163 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %base, align 4
  %add.ptr86.i = getelementptr i8, ptr %164, i32 72
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86.i) #5, !srcloc !72
  %166 = or i32 %165, 65536
  %167 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %base, align 4
  %add.ptr92.i = getelementptr i8, ptr %168, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %166) #5, !srcloc !73
  br label %if.end36

if.end36:                                         ; preds = %if.end72.i, %if.then29
  %daifmt = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 22
  %169 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %daifmt, align 4
  %and37 = and i32 %170, 15
  %171 = zext i32 %and37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %and37, label %do.end96 [
    i32 1, label %sw.bb
    i32 3, label %sw.bb56
    i32 2, label %sw.bb75
  ]

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %172 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %173, i32 72
  %174 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #5, !srcloc !72
  %175 = and i32 %174, 2147483647
  %176 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %177, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %175) #5, !srcloc !73
  %178 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %179, i32 72
  %180 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !72
  %181 = and i32 %180, -1073741825
  %182 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %base, align 4
  %add.ptr55 = getelementptr i8, ptr %183, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %181) #5, !srcloc !73
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %184 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %185, i32 72
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #5, !srcloc !72
  %187 = and i32 %186, 2147483647
  %188 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %189, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %187) #5, !srcloc !73
  %190 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %191, i32 72
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #5, !srcloc !72
  %193 = or i32 %192, 1073741824
  %194 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base, align 4
  %add.ptr74 = getelementptr i8, ptr %195, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %193) #5, !srcloc !73
  br label %sw.epilog

sw.bb75:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %196 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %197, i32 72
  %198 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #5, !srcloc !72
  %199 = or i32 %198, -2147483648
  %200 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base, align 4
  %add.ptr84 = getelementptr i8, ptr %201, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84, i32 %199) #5, !srcloc !73
  %202 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base, align 4
  %add.ptr87 = getelementptr i8, ptr %203, i32 72
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #5, !srcloc !72
  %205 = or i32 %204, 1073741824
  %206 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base, align 4
  %add.ptr93 = getelementptr i8, ptr %207, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %205) #5, !srcloc !73
  br label %sw.epilog

do.end96:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %dev97 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %208 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.14) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb75, %sw.bb56, %sw.bb
  %210 = ptrtoint ptr %daifmt to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %daifmt, align 4
  %and99 = lshr i32 %211, 8
  %212 = and i32 %and99, 15
  %213 = zext i32 %212 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %212, label %sw.epilog.sw.epilog176_crit_edge [
    i32 0, label %sw.bb100
    i32 2, label %sw.bb119
    i32 3, label %sw.bb138
    i32 4, label %sw.bb157
  ]

sw.epilog.sw.epilog176_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog176

sw.bb100:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %214 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base, align 4
  %add.ptr103 = getelementptr i8, ptr %215, i32 72
  %216 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #5, !srcloc !72
  %217 = and i32 %216, -268435457
  %218 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %base, align 4
  %add.ptr109 = getelementptr i8, ptr %219, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %217) #5, !srcloc !73
  %220 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %base, align 4
  %add.ptr112 = getelementptr i8, ptr %221, i32 72
  %222 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #5, !srcloc !72
  %223 = and i32 %222, -536870913
  %224 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base, align 4
  %add.ptr118 = getelementptr i8, ptr %225, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr118, i32 %223) #5, !srcloc !73
  br label %sw.epilog176

sw.bb119:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %226 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %base, align 4
  %add.ptr122 = getelementptr i8, ptr %227, i32 72
  %228 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122) #5, !srcloc !72
  %229 = or i32 %228, 268435456
  %230 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base, align 4
  %add.ptr128 = getelementptr i8, ptr %231, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %229) #5, !srcloc !73
  %232 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base, align 4
  %add.ptr131 = getelementptr i8, ptr %233, i32 72
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #5, !srcloc !72
  %235 = and i32 %234, -536870913
  %236 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %base, align 4
  %add.ptr137 = getelementptr i8, ptr %237, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %235) #5, !srcloc !73
  br label %sw.epilog176

sw.bb138:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %238 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %base, align 4
  %add.ptr141 = getelementptr i8, ptr %239, i32 72
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #5, !srcloc !72
  %241 = and i32 %240, -268435457
  %242 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base, align 4
  %add.ptr147 = getelementptr i8, ptr %243, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %241) #5, !srcloc !73
  %244 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %base, align 4
  %add.ptr150 = getelementptr i8, ptr %245, i32 72
  %246 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150) #5, !srcloc !72
  %247 = or i32 %246, 536870912
  %248 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %base, align 4
  %add.ptr156 = getelementptr i8, ptr %249, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr156, i32 %247) #5, !srcloc !73
  br label %sw.epilog176

sw.bb157:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %250 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %base, align 4
  %add.ptr160 = getelementptr i8, ptr %251, i32 72
  %252 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #5, !srcloc !72
  %253 = or i32 %252, 268435456
  %254 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %base, align 4
  %add.ptr166 = getelementptr i8, ptr %255, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %253) #5, !srcloc !73
  %256 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %base, align 4
  %add.ptr169 = getelementptr i8, ptr %257, i32 72
  %258 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #5, !srcloc !72
  %259 = or i32 %258, 536870912
  %260 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %base, align 4
  %add.ptr175 = getelementptr i8, ptr %261, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175, i32 %259) #5, !srcloc !73
  br label %sw.epilog176

sw.epilog176:                                     ; preds = %sw.bb157, %sw.bb138, %sw.bb119, %sw.bb100, %sw.epilog.sw.epilog176_crit_edge
  %262 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %base, align 4
  %add.ptr179 = getelementptr i8, ptr %263, i32 12
  %264 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr179) #5, !srcloc !72
  %265 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %base, align 4
  %add.ptr183 = getelementptr i8, ptr %266, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr183, i32 %264) #5, !srcloc !73
  %267 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %base, align 4
  %add.ptr186 = getelementptr i8, ptr %268, i32 72
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr186) #5, !srcloc !72
  %270 = and i32 %269, -15794176
  %271 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %base, align 4
  %add.ptr192 = getelementptr i8, ptr %272, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 %270) #5, !srcloc !73
  %273 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %base, align 4
  %add.ptr194 = getelementptr i8, ptr %274, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr194, i32 131072) #5, !srcloc !73
  %275 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %276)
  %cmp196 = icmp slt i32 %276, 5
  %shl197 = select i1 %cmp196, i32 1, i32 256
  %277 = call i32 @llvm.bswap.i32(i32 %shl197)
  %278 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %base, align 4
  %add.ptr199 = getelementptr i8, ptr %279, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr199, i32 %277) #5, !srcloc !73
  %280 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %base, align 4
  %add.ptr201 = getelementptr i8, ptr %281, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr201, i32 536870912) #5, !srcloc !73
  %underflow_enabled = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 1
  %282 = ptrtoint ptr %underflow_enabled to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %underflow_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %283)
  %tobool202.not = icmp eq i32 %283, 0
  br i1 %tobool202.not, label %sw.epilog176.if.end225_crit_edge, label %if.then203

sw.epilog176.if.end225_crit_edge:                 ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end225

if.then203:                                       ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #7
  %284 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %285)
  %cmp205 = icmp slt i32 %285, 5
  %spec.select = select i1 %cmp205, i32 0, i32 1048576
  %286 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %base, align 4
  %add.ptr212 = getelementptr i8, ptr %287, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 %spec.select) #5, !srcloc !73
  %288 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %289)
  %cmp214 = icmp slt i32 %289, 5
  %cond222 = select i1 %cmp214, i32 0, i32 2097152
  %290 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %base, align 4
  %add.ptr224 = getelementptr i8, ptr %291, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr224, i32 %cond222) #5, !srcloc !73
  br label %if.end225

if.end225:                                        ; preds = %if.then203, %sw.epilog176.if.end225_crit_edge
  %call226 = call i32 @sti_uniperiph_reset(ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %do.end96, %do.end70.i, %do.end59.i, %do.end20, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end20 ], [ -22, %do.end96 ], [ %call226, %if.end225 ], [ -22, %do.end59.i ], [ -22, %do.end70.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uni_reader_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
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
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i6 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %dev.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %ver.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp1.i = icmp slt i32 %12, 5
  %shl.i = select i1 %cmp1.i, i32 1, i32 256
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #5
  %base.i = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !73
  %16 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp3.i = icmp slt i32 %17, 5
  %shl5.i = select i1 %cmp3.i, i32 1, i32 256
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl5.i) #5
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %18) #5, !srcloc !73
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %22, i32 68
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !72
  %24 = and i32 %23, -117440513
  %25 = or i32 %24, 50331648
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %27, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %25) #5, !srcloc !73
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %state.i, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %state.i7 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 16
  %29 = ptrtoint ptr %state.i7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %do.end.i9, label %if.end.i13

do.end.i9:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i8 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %dev.i8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end.i13:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %base.i10 = getelementptr inbounds %struct.uniperif, ptr %5, i32 0, i32 10
  %33 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %34, i32 68
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #5, !srcloc !72
  %36 = and i32 %35, -117440513
  %37 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i10, align 4
  %add.ptr2.i = getelementptr i8, ptr %38, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %36) #5, !srcloc !73
  %39 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i10, align 4
  %add.ptr5.i = getelementptr i8, ptr %40, i32 24
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !72
  %42 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i10, align 4
  %add.ptr9.i12 = getelementptr i8, ptr %43, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i12, i32 %41) #5, !srcloc !73
  %44 = ptrtoint ptr %state.i7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %state.i7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i13, %do.end.i9, %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end.i ], [ -22, %do.end.i9 ], [ 0, %if.end.i13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_chan(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_fix_tdm_format(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_uniperiph_get_tdm_word_pos(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_stream_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !56, !57, !58, !59, !61, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/sti/uniperif_reader.c", i32 428, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @uni_reader_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @uni_reader_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @uni_reader_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../sound/soc/sti/uniperif_reader.c", i32 432, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__ksymtab_uni_reader_init, !12, !"__ksymtab_uni_reader_init", i1 false, i1 false}
!12 = !{!"../sound/soc/sti/uniperif_reader.c", i32 436, i32 1}
!13 = !{ptr @uni_reader_dai_ops, !14, !"uni_reader_dai_ops", i1 false, i1 false}
!14 = !{!"../sound/soc/sti/uniperif_reader.c", i32 400, i32 37}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/sti/uniperif_reader.c", i32 321, i32 3}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @uni_reader_stop._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @uni_reader_stop._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/sti/uniperif_reader.c", i32 196, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @uni_reader_prepare._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @uni_reader_prepare._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/sti/uniperif_reader.c", i32 225, i32 3}
!27 = !{ptr @uni_reader_prepare._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @uni_reader_prepare._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/sti/uniperif_reader.c", i32 253, i32 3}
!31 = !{ptr @uni_reader_prepare._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @uni_reader_prepare._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/sti/uniperif_reader.c", i32 112, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @uni_reader_prepare_pcm._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @uni_reader_prepare_pcm._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @uni_reader_prepare_pcm._entry.18, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../sound/soc/sti/uniperif_reader.c", i32 132, i32 3}
!40 = !{ptr @uni_reader_prepare_pcm._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/sti/uniperif_reader.c", i32 139, i32 3}
!43 = !{ptr @uni_reader_prepare_pcm._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @uni_reader_prepare_pcm._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/sti/uniperif_reader.c", i32 301, i32 3}
!47 = !{ptr @uni_reader_start._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @uni_reader_start._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @uni_tdm_hw, !50, !"uni_tdm_hw", i1 false, i1 false}
!50 = !{!"../sound/soc/sti/uniperif.h", i32 1351, i32 53}
!51 = !{ptr @uni_reader_pcm_hw, !52, !"uni_reader_pcm_hw", i1 false, i1 false}
!52 = !{!"../sound/soc/sti/uniperif_reader.c", i32 17, i32 38}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/sti/uniperif_reader.c", i32 56, i32 3}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @uni_reader_irq_handler._entry, !54, !"_entry", i1 false, i1 false}
!58 = !{ptr @uni_reader_irq_handler._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/sti/uniperif_reader.c", i32 66, i32 3}
!61 = !{ptr @uni_reader_irq_handler._entry.27, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @uni_reader_irq_handler._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 5044586}
!73 = !{i64 5044168}
!74 = !{!"branch_weights", i32 2000, i32 1}
