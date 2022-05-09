; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-pcm-fiq.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-pcm-fiq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_pcm_fiq_init\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_pcm_fiq_init\09\09\09\09"
module asm "\09.long\09__crc_imx_pcm_fiq_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pcm_fiq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pcm_fiq_init\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pcm_fiq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_pcm_fiq_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_pcm_fiq_exit\09\09\09\09"
module asm "\09.long\09__crc_imx_pcm_fiq_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pcm_fiq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pcm_fiq_exit\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pcm_fiq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fiq_handler = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_pcm_fiq_params = type { i32, ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
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
%struct.imx_pcm_runtime_data = type { i32, i32, i32, %struct.hrtimer, i32, ptr, %struct.atomic_t, %struct.atomic_t }
%struct.pt_regs = type { [18 x i32] }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@fh = internal global { %struct.fiq_handler, [16 x i8] } { %struct.fiq_handler { ptr null, ptr @.str.5, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@imx_pcm_fiq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to claim fiq: %d\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_pcm_fiq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/fsl/imx-pcm-fiq.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_pcm_fiq_init._entry_ptr = internal global ptr @imx_pcm_fiq_init._entry, section ".printk_index", align 4
@ssi_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx_pcm_fiq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx_ssi_fiq_base = external dso_local local_unnamed_addr global i32, align 4
@imx_soc_component_fiq = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_imx_pcm_new, ptr @snd_imx_pcm_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_imx_open, ptr @snd_imx_close, ptr null, ptr @snd_imx_pcm_hw_params, ptr null, ptr @snd_imx_pcm_prepare, ptr @snd_imx_pcm_trigger, ptr null, ptr @snd_imx_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_imx_pcm_fiq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pcm_fiq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pcm_fiq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pcm_fiq_init to i32), ptr @__kstrtab_imx_pcm_fiq_init, ptr @__kstrtabns_imx_pcm_fiq_init }, section "___ksymtab_gpl+imx_pcm_fiq_init", align 4
@__kstrtab_imx_pcm_fiq_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pcm_fiq_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pcm_fiq_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pcm_fiq_exit to i32), ptr @__kstrtab_imx_pcm_fiq_exit, ptr @__kstrtabns_imx_pcm_fiq_exit }, section "___ksymtab_gpl+imx_pcm_fiq_exit", align 4
@__UNIQUE_ID_file242 = internal constant [43 x i8] c"imx_pcm_fiq.file=sound/soc/fsl/imx-pcm-fiq\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"imx_pcm_fiq.license=GPL\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-ssi\00", [24 x i8] zeroinitializer }, align 32
@imx_ssi_fiq_tx_buffer = external dso_local local_unnamed_addr global i32, align 4
@imx_ssi_fiq_rx_buffer = external dso_local local_unnamed_addr global i32, align 4
@imx_ssi_fiq_start = external dso_local global i8, align 1
@imx_ssi_fiq_end = external dso_local global i8, align 1
@snd_imx_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 128, i32 16384, i32 4, i32 255, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.6 = private unnamed_addr constant [3 x i8] c"fh\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 68, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 288, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"ssi_irq\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 230, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"imx_pcm_fiq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 106, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"imx_soc_component_fiq\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 270, i32 46 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 69, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"snd_imx_hardware\00", align 1
@___asan_gen_.40 = private constant [31 x i8] c"../sound/soc/fsl/imx-pcm-fiq.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 156, i32 38 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__ksymtab_imx_pcm_fiq_exit, ptr @__ksymtab_imx_pcm_fiq_init, ptr @imx_pcm_fiq_init._entry, ptr @imx_pcm_fiq_init._entry_ptr, ptr @fh, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ssi_irq, ptr @imx_pcm_fiq, ptr @imx_soc_component_fiq, ptr @.str.5, ptr @snd_imx_hardware], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fh to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pcm_fiq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssi_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pcm_fiq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_soc_component_fiq to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_imx_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_pcm_fiq_init(ptr noundef %pdev, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @claim_fiq(ptr noundef nonnull @fh) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %params, align 4
  %call1 = tail call i32 @mxc_set_irq_fiq(i32 noundef %1, i32 noundef 1) #8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %params, align 4
  store i32 %3, ptr @ssi_irq, align 4
  store i32 %3, ptr @imx_pcm_fiq, align 4
  %base = getelementptr inbounds %struct.imx_pcm_fiq_params, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @imx_ssi_fiq_base to i32))
  store i32 %6, ptr @imx_ssi_fiq_base, align 4
  %dma_params_tx = getelementptr inbounds %struct.imx_pcm_fiq_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %dma_params_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_params_tx, align 4
  %maxburst = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %maxburst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %maxburst, align 4
  %dma_params_rx = getelementptr inbounds %struct.imx_pcm_fiq_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %dma_params_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_params_rx, align 4
  %maxburst4 = getelementptr inbounds %struct.snd_dmaengine_dai_dma_data, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %maxburst4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %maxburst4, align 4
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call6 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev5, ptr noundef nonnull @imx_soc_component_fiq, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %failed_register

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

failed_register:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = load i32, ptr @ssi_irq, align 4
  %call10 = tail call i32 @mxc_set_irq_fiq(i32 noundef %13, i32 noundef 0) #8
  tail call void @release_fiq(ptr noundef nonnull @fh) #8
  br label %cleanup

cleanup:                                          ; preds = %failed_register, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call6, %failed_register ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @claim_fiq(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxc_set_irq_fiq(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_fiq(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @imx_pcm_fiq_exit(ptr nocapture %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_imx_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %0 = ptrtoint ptr %pcm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm1, align 4
  %card1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %2 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1.i, align 4
  %snd_card.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %snd_card.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %snd_card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  %coherent_dma_mask.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 19
  %dma_mask.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %coherent_dma_mask.i.i, ptr %dma_mask.i.i, align 8
  %call.i.i.i = tail call i32 @dma_set_mask(ptr noundef %7, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %imx_pcm_new.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

imx_pcm_new.exit:                                 ; preds = %entry
  %call1.i.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef 4294967295) #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %dev4.i = getelementptr inbounds %struct.snd_card, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev4.i, align 8
  %call.i.i = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %1, i32 noundef 5, ptr noundef %12, i32 noundef 65536, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %imx_pcm_new.exit.cleanup_crit_edge

imx_pcm_new.exit.cleanup_crit_edge:               ; preds = %imx_pcm_new.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %imx_pcm_new.exit
  %substream2 = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 0, i32 4
  %13 = ptrtoint ptr %substream2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %substream2, align 8
  %tobool3.not = icmp eq ptr %14, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %area = getelementptr inbounds %struct.snd_pcm_substream, ptr %14, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %area, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @imx_ssi_fiq_tx_buffer to i32))
  store i32 %17, ptr @imx_ssi_fiq_tx_buffer, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %substream8 = getelementptr %struct.snd_pcm, ptr %1, i32 0, i32 8, i32 1, i32 4
  %18 = ptrtoint ptr %substream8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %substream8, align 8
  %tobool9.not = icmp eq ptr %19, null
  br i1 %tobool9.not, label %if.end5.if.end14_crit_edge, label %if.then10

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %area13 = getelementptr inbounds %struct.snd_pcm_substream, ptr %19, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %area13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %area13, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @imx_ssi_fiq_rx_buffer to i32))
  store i32 %22, ptr @imx_ssi_fiq_rx_buffer, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end5.if.end14_crit_edge
  tail call void @set_fiq_handler(ptr noundef nonnull @imx_ssi_fiq_start, i32 noundef sub (i32 ptrtoint (ptr @imx_ssi_fiq_end to i32), i32 ptrtoint (ptr @imx_ssi_fiq_start to i32))) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %imx_pcm_new.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call.i.i, %imx_pcm_new.exit.cleanup_crit_edge ], [ %call.i.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_imx_pcm_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ssi_irq, align 4
  %call = tail call i32 @mxc_set_irq_fiq(i32 noundef %0, i32 noundef 0) #8
  tail call void @release_fiq(ptr noundef nonnull @fh) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_imx_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 80) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 8
  %substream2 = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %call7.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %substream2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %substream, ptr %substream2, align 4
  %playing = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %call7.i.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %playing, i32 noundef 4) #8
  %5 = ptrtoint ptr %playing to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %playing, align 8
  %capturing = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %call7.i.i, i32 0, i32 7
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %capturing, i32 noundef 4) #8
  %6 = ptrtoint ptr %capturing to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %capturing, align 4
  %hrt = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %call7.i.i, i32 0, i32 3
  tail call void @hrtimer_init(ptr noundef %hrt, i32 noundef 1, i32 noundef 1) #8
  %function = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %call7.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @snd_hrtimer_callback, ptr %function, align 8
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %call5 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %9, i32 noundef 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @snd_imx_hardware) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ 0, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_imx_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %hrt = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 3
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hrt) #8
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_imx_pcm_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %periods = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %periods to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %periods, align 4
  %arrayidx.i.i11 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i11, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %3, align 8
  %offset = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %offset, align 8
  %arrayidx.i.i12 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i12, align 4
  %div = udiv i32 1000000000, %12
  %arrayidx.i.i13 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 5
  %13 = ptrtoint ptr %arrayidx.i.i13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i13, align 4
  %mul = mul i32 %14, %div
  %poll_time_ns = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %poll_time_ns to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %poll_time_ns, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_imx_pcm_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  %regs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %regs) #8
  %4 = call ptr @memset(ptr %regs, i32 255, i32 72)
  %arrayidx.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 8
  call void @__get_fiq_regs(ptr noundef %arrayidx.i) #8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %3, align 8
  %periods = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %periods, align 4
  %mul = shl i32 %8, 16
  %sub = mul i32 %mul, %10
  %shl = add i32 %sub, -65536
  %arrayidx8 = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 9
  %arrayidx8.sink = select i1 %cmp, ptr %arrayidx.i, ptr %arrayidx8
  %11 = ptrtoint ptr %arrayidx8.sink to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl, ptr %arrayidx8.sink, align 4
  call void @__set_fiq_regs(ptr noundef %arrayidx.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %regs) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_imx_pcm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge35
    i32 4, label %entry.sw.bb_crit_edge36
    i32 0, label %entry.sw.bb2_crit_edge
    i32 5, label %entry.sw.bb2_crit_edge37
    i32 3, label %entry.sw.bb2_crit_edge38
  ]

entry.sw.bb2_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %capturing = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 7
  %playing = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 6
  %capturing.sink33 = select i1 %cmp, ptr %playing, ptr %capturing
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %capturing.sink33, i32 noundef 4) #8
  %7 = ptrtoint ptr %capturing.sink33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %capturing.sink33, align 4
  %hrt = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 3
  %poll_time_ns = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %poll_time_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %poll_time_ns, align 8
  %conv = sext i32 %9 to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %hrt, i64 noundef %conv, i64 noundef 0, i32 noundef 1) #8
  %10 = load i32, ptr @imx_pcm_fiq, align 4
  tail call void @enable_fiq(i32 noundef %10) #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge37, %entry.sw.bb2_crit_edge38
  %stream3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4 = icmp eq i32 %12, 0
  %capturing9 = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 7
  %playing7 = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 6
  %capturing9.sink34 = select i1 %cmp4, ptr %playing7, ptr %capturing9
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %capturing9.sink34, i32 noundef 4) #8
  %13 = ptrtoint ptr %capturing9.sink34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %capturing9.sink34, align 4
  %playing11 = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 6
  %call.i.i31 = tail call zeroext i1 @__kasan_check_read(ptr noundef %playing11, i32 noundef 4) #8
  %14 = ptrtoint ptr %playing11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %playing11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %land.lhs.true, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb2
  %capturing13 = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 7
  %call.i.i32 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing13, i32 noundef 4) #8
  %16 = ptrtoint ptr %capturing13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %capturing13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @imx_pcm_fiq, align 4
  tail call void @disable_fiq(i32 noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb2.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_imx_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %offset = getelementptr inbounds %struct.imx_pcm_runtime_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset, align 8
  %mul.i = shl i32 %5, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %7
  ret i32 %div.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_fiq_handler(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_hrtimer_callback(ptr noundef %hrt) #0 align 64 {
entry:
  %regs = alloca %struct.pt_regs, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr i8, ptr %hrt, i32 52
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %regs) #8
  %2 = call ptr @memset(ptr %regs, i32 255, i32 72)
  %playing = getelementptr i8, ptr %hrt, i32 56
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %playing, i32 noundef 4) #8
  %3 = ptrtoint ptr %playing to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %playing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %capturing = getelementptr i8, ptr %hrt, i32 60
  %call.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %capturing, i32 noundef 4) #8
  %5 = ptrtoint ptr %capturing to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %capturing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 8
  call void @__get_fiq_regs(ptr noundef %arrayidx.i) #8
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  %arrayidx6 = getelementptr inbounds [18 x i32], ptr %regs, i32 0, i32 9
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %arrayidx.i.val = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %arrayidx6.val = load i32, ptr %arrayidx6, align 4
  %11 = select i1 %cmp, i32 %arrayidx.i.val, i32 %arrayidx6.val
  %and7.sink = and i32 %11, 65535
  %12 = getelementptr i8, ptr %hrt, i32 -8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and7.sink, ptr %12, align 8
  call void @snd_pcm_period_elapsed(ptr noundef %1) #8
  %poll_time_ns = getelementptr i8, ptr %hrt, i32 48
  %14 = ptrtoint ptr %poll_time_ns to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %poll_time_ns, align 8
  %conv = sext i32 %15 to i64
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrt, i32 0, i32 3
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %get_time.i, align 4
  %call.i = call i64 %19() #8
  %call1.i = call i64 @hrtimer_forward(ptr noundef %hrt, i64 noundef %call.i, i64 noundef %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %regs) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__get_fiq_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fiq_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_fiq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_fiq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 288, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @imx_pcm_fiq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @imx_pcm_fiq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_imx_pcm_fiq_init, !9, !"__ksymtab_imx_pcm_fiq_init", i1 false, i1 false}
!9 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 315, i32 1}
!10 = !{ptr @__ksymtab_imx_pcm_fiq_exit, !11, !"__ksymtab_imx_pcm_fiq_exit", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 320, i32 1}
!12 = !{ptr @__UNIQUE_ID_file242, !13, !"__UNIQUE_ID_file242", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 322, i32 1}
!14 = !{ptr @__UNIQUE_ID_license243, !13, !"__UNIQUE_ID_license243", i1 false, i1 false}
!15 = !{ptr @imx_pcm_fiq, !16, !"imx_pcm_fiq", i1 false, i1 false}
!16 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 106, i32 12}
!17 = !{ptr @ssi_irq, !18, !"ssi_irq", i1 false, i1 false}
!18 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 230, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 69, i32 11}
!21 = !{ptr @fh, !22, !"fh", i1 false, i1 false}
!22 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 68, i32 27}
!23 = !{ptr @imx_soc_component_fiq, !24, !"imx_soc_component_fiq", i1 false, i1 false}
!24 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 270, i32 46}
!25 = !{ptr @snd_imx_hardware, !26, !"snd_imx_hardware", i1 false, i1 false}
!26 = !{!"../sound/soc/fsl/imx-pcm-fiq.c", i32 156, i32 38}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
