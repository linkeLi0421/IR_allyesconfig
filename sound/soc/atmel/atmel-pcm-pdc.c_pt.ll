; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel-pcm-pdc.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pcm-pdc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atmel_pcm_pdc_platform_register\22, \22a\22\09"
module asm "\09.weak\09__crc_atmel_pcm_pdc_platform_register\09\09\09\09"
module asm "\09.long\09__crc_atmel_pcm_pdc_platform_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atmel_pcm_pdc_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22atmel_pcm_pdc_platform_register\22\09\09\09\09\09"
module asm "__kstrtabns_atmel_pcm_pdc_platform_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.atmel_pcm_dma_params = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atmel_runtime_data = type { ptr, i32, i32, i32, i32 }
%struct.atmel_ssc_mask = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.atmel_pdc_regs = type { i32, i32, i32, i32, i32 }

@atmel_soc_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pcm_new, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pcm_open, ptr @atmel_pcm_close, ptr null, ptr @atmel_pcm_hw_params, ptr @atmel_pcm_hw_free, ptr @atmel_pcm_prepare, ptr @atmel_pcm_trigger, ptr null, ptr @atmel_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_atmel_pcm_pdc_platform_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_atmel_pcm_pdc_platform_register = external dso_local constant [0 x i8], align 1
@__ksymtab_atmel_pcm_pdc_platform_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atmel_pcm_pdc_platform_register to i32), ptr @__kstrtab_atmel_pcm_pdc_platform_register, ptr @__kstrtabns_atmel_pcm_pdc_platform_register }, section "___ksymtab+atmel_pcm_pdc_platform_register", align 4
@__UNIQUE_ID_author244 = internal constant [69 x i8] c"snd_soc_atmel_pcm_pdc.author=Sedji Gaouaou <sedji.gaouaou@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description245 = internal constant [51 x i8] c"snd_soc_atmel_pcm_pdc.description=Atmel PCM module\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [65 x i8] c"snd_soc_atmel_pcm_pdc.file=sound/soc/atmel/snd-soc-atmel-pcm-pdc\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [34 x i8] c"snd_soc_atmel_pcm_pdc.license=GPL\00", section ".modinfo", align 1
@atmel_pcm_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 524547, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 32, i32 8192, i32 2, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@atmel_pcm_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_atmel_pcm_pdc\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_pcm_hw_params\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/atmel/atmel-pcm-pdc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"atmel-pcm: hw_params: DMA for %s initialized (dma_bytes=%zu, period_size=%zu)\0A\00", [49 x i8] zeroinitializer }, align 32
@atmel_pcm_dma_irq.count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@atmel_pcm_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014atmel-pcm: buffer %s on %s (SSC_SR=%#x, count=%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_pcm_dma_irq\00", [46 x i8] zeroinitializer }, align 32
@atmel_pcm_dma_irq._entry_ptr = internal global ptr @atmel_pcm_dma_irq._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"underrun\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"overrun\00", [24 x i8] zeroinitializer }, align 32
@atmel_pcm_trigger.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_pcm_trigger\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"atmel-pcm:buffer_size = %ld,dma_area = %p, dma_bytes = %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_pcm_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"atmel-pcm: trigger: period_ptr=%lx, xpr=%u, xcr=%u, xnpr=%u, xncr=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@atmel_pcm_trigger.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sr=%u imr=%u\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.12 = private unnamed_addr constant [19 x i8] c"atmel_soc_platform\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 311, i32 46 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"atmel_pcm_hardware\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 60, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 155, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 93, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 98, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 200, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 219, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [35 x i8] c"../sound/soc/atmel/atmel-pcm-pdc.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 233, i32 3 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_atmel_pcm_pdc_platform_register, ptr @atmel_pcm_dma_irq._entry, ptr @atmel_pcm_dma_irq._entry_ptr, ptr @atmel_soc_platform, ptr @atmel_pcm_hardware, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @atmel_pcm_dma_irq.count, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_soc_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_dma_irq.count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pcm_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atmel_pcm_pdc_platform_register(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @atmel_soc_platform, ptr noundef null, i32 noundef 0) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %5, i64 noundef 4294967295) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %5, i64 noundef 4294967295) #4
  %pcm = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call3 = tail call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %8, i32 noundef 2, ptr noundef %10, i32 noundef 65536, i32 noundef 65536) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @atmel_pcm_hardware) #4
  %call2 = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %1, i32 noundef 15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 20) #7
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 8
  br label %out

out:                                              ; preds = %if.end6, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.out_crit_edge ], [ %call2, %if.end6 ], [ -12, %if.end.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @kfree(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_hw_params(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %private_data2 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %4 = ptrtoint ptr %private_data2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data2, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i = icmp eq i32 %11, 0
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 7
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 8
  %cond.in.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %12 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond.i = load ptr, ptr %cond.in.i, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cond.i, ptr %3, align 4
  %dma_intr_handler = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %cond.i, i32 0, i32 6
  %14 = ptrtoint ptr %dma_intr_handler to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @atmel_pcm_dma_irq, ptr %dma_intr_handler, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %15 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_addr, align 8
  %dma_buffer = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 1
  %17 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dma_buffer, align 4
  %18 = load i32, ptr %dma_addr, align 8
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %19 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_bytes, align 4
  %add = add i32 %20, %18
  %dma_buffer_end = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 2
  %21 = ptrtoint ptr %dma_buffer_end to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %dma_buffer_end, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i, align 4
  %period_size = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %period_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %period_size, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pcm_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_pcm_hw_params, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_bytes, align 4
  %31 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_size, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_pcm_hw_params.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.3, ptr noundef %28, i32 noundef %30, i32 noundef %32) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_hw_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask, align 4
  %pdc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %pdc_disable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdc_disable, align 4
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #4, !srcloc !48
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %dma_intr_handler = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %dma_intr_handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %dma_intr_handler, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_prepare(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mask, align 4
  %ssc_endx = getelementptr inbounds %struct.atmel_ssc_mask, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ssc_endx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssc_endx, align 4
  %ssc_endbuf = getelementptr inbounds %struct.atmel_ssc_mask, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %ssc_endbuf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssc_endbuf, align 4
  %or = or i32 %11, %9
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %or) #4, !srcloc !48
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mask, align 4
  %pdc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %pdc_disable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pdc_disable, align 4
  %20 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssc, align 4
  %regs5 = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs5, align 4
  %add.ptr6 = getelementptr i8, ptr %23, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %19) #4, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_pcm_trigger, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !47

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buffer_size, align 4
  %dma_area = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %8 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_area, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %10 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_bytes, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_pcm_trigger.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.9, i32 noundef %7, ptr noundef %9, i32 noundef %11) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %do.end.sw.bb96_crit_edge
    i32 5, label %do.end.sw.bb96_crit_edge156
    i32 3, label %do.end.sw.bb96_crit_edge157
    i32 6, label %do.end.sw.bb101_crit_edge
    i32 4, label %do.end.sw.bb101_crit_edge158
  ]

do.end.sw.bb101_crit_edge158:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb101

do.end.sw.bb101_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb101

do.end.sw.bb96_crit_edge157:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb96

do.end.sw.bb96_crit_edge156:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb96

do.end.sw.bb96_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb96

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  %dma_buffer = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_buffer, align 4
  %period_ptr = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %period_ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %period_ptr, align 4
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %pdc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdc, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #4, !srcloc !48
  %period_size = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %period_size, align 4
  %pdc_xfer_size = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %pdc_xfer_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pdc_xfer_size, align 4
  %div = udiv i32 %25, %27
  %28 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ssc, align 4
  %regs6 = getelementptr inbounds %struct.ssc_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs6, align 4
  %32 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdc, align 4
  %xcr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %xcr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xcr, align 4
  %add.ptr8 = getelementptr i8, ptr %31, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %div) #4, !srcloc !48
  %36 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %period_size, align 4
  %38 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %period_ptr, align 4
  %add = add i32 %39, %37
  store i32 %add, ptr %period_ptr, align 4
  %40 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ssc, align 4
  %regs13 = getelementptr inbounds %struct.ssc_device, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs13, align 4
  %44 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdc, align 4
  %xnpr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %xnpr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %xnpr, align 4
  %add.ptr15 = getelementptr i8, ptr %43, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %add) #4, !srcloc !48
  %48 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %period_size, align 4
  %50 = ptrtoint ptr %pdc_xfer_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pdc_xfer_size, align 4
  %div18 = udiv i32 %49, %51
  %52 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ssc, align 4
  %regs20 = getelementptr inbounds %struct.ssc_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %regs20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs20, align 4
  %56 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdc, align 4
  %xncr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %xncr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xncr, align 4
  %add.ptr22 = getelementptr i8, ptr %55, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %div18) #4, !srcloc !48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_pcm_trigger, %if.then35)) #4
          to label %do.end63 [label %if.then35], !srcloc !47

if.then35:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %60 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %period_ptr, align 4
  %62 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ssc, align 4
  %regs38 = getelementptr inbounds %struct.ssc_device, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %regs38 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs38, align 4
  %66 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdc, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add.ptr41 = getelementptr i8, ptr %65, i32 %69
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #4, !srcloc !49
  %71 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ssc, align 4
  %regs44 = getelementptr inbounds %struct.ssc_device, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs44, align 4
  %75 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdc, align 4
  %xcr46 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %xcr46 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %xcr46, align 4
  %add.ptr47 = getelementptr i8, ptr %74, i32 %78
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !49
  %80 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ssc, align 4
  %regs50 = getelementptr inbounds %struct.ssc_device, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %regs50 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs50, align 4
  %84 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdc, align 4
  %xnpr52 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %xnpr52 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xnpr52, align 4
  %add.ptr53 = getelementptr i8, ptr %83, i32 %87
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #4, !srcloc !49
  %89 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ssc, align 4
  %regs56 = getelementptr inbounds %struct.ssc_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %regs56 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs56, align 4
  %93 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdc, align 4
  %xncr58 = getelementptr inbounds %struct.atmel_pdc_regs, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %xncr58 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xncr58, align 4
  %add.ptr59 = getelementptr i8, ptr %92, i32 %96
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #4, !srcloc !49
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_pcm_trigger.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.10, i32 noundef %61, i32 noundef %70, i32 noundef %79, i32 noundef %88, i32 noundef %97) #4
  br label %do.end63

do.end63:                                         ; preds = %if.then35, %sw.bb
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %98 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mask, align 4
  %ssc_endx = getelementptr inbounds %struct.atmel_ssc_mask, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %ssc_endx to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ssc_endx, align 4
  %ssc_endbuf = getelementptr inbounds %struct.atmel_ssc_mask, ptr %99, i32 0, i32 4
  %102 = ptrtoint ptr %ssc_endbuf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ssc_endbuf, align 4
  %or = or i32 %103, %101
  %104 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ssc, align 4
  %regs66 = getelementptr inbounds %struct.ssc_device, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %regs66 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs66, align 4
  %add.ptr67 = getelementptr i8, ptr %107, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %or) #4, !srcloc !48
  %108 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mask, align 4
  %pdc_enable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %pdc_enable to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pdc_enable, align 4
  %112 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ssc, align 4
  %regs70 = getelementptr inbounds %struct.ssc_device, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %regs70 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs70, align 4
  %add.ptr71 = getelementptr i8, ptr %115, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %111) #4, !srcloc !48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_pcm_trigger, %if.then84)) #4
          to label %sw.epilog [label %if.then84], !srcloc !47

if.then84:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #6
  %116 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ssc, align 4
  %regs86 = getelementptr inbounds %struct.ssc_device, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %regs86 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs86, align 4
  %add.ptr87 = getelementptr i8, ptr %119, i32 64
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87) #4, !srcloc !49
  %121 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ssc, align 4
  %regs90 = getelementptr inbounds %struct.ssc_device, ptr %122, i32 0, i32 2
  %123 = ptrtoint ptr %regs90 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs90, align 4
  %add.ptr91 = getelementptr i8, ptr %124, i32 68
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #4, !srcloc !49
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atmel_pcm_trigger.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.11, i32 noundef %120, i32 noundef %125) #4
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.end.sw.bb96_crit_edge, %do.end.sw.bb96_crit_edge156, %do.end.sw.bb96_crit_edge157
  %mask97 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %126 = ptrtoint ptr %mask97 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mask97, align 4
  %pdc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %127, i32 0, i32 6
  %128 = ptrtoint ptr %pdc_disable to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pdc_disable, align 4
  %ssc98 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %130 = ptrtoint ptr %ssc98 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ssc98, align 4
  %regs99 = getelementptr inbounds %struct.ssc_device, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %regs99 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regs99, align 4
  %add.ptr100 = getelementptr i8, ptr %133, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %129) #4, !srcloc !48
  br label %sw.epilog

sw.bb101:                                         ; preds = %do.end.sw.bb101_crit_edge, %do.end.sw.bb101_crit_edge158
  %mask102 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %134 = ptrtoint ptr %mask102 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mask102, align 4
  %pdc_enable103 = getelementptr inbounds %struct.atmel_ssc_mask, ptr %135, i32 0, i32 5
  %136 = ptrtoint ptr %pdc_enable103 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pdc_enable103, align 4
  %ssc104 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %138 = ptrtoint ptr %ssc104 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ssc104, align 4
  %regs105 = getelementptr inbounds %struct.ssc_device, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %regs105 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs105, align 4
  %add.ptr106 = getelementptr i8, ptr %141, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 %137) #4, !srcloc !48
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb101, %sw.bb96, %if.then84, %do.end63, %do.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb101 ], [ 0, %sw.bb96 ], [ 0, %if.then84 ], [ -22, %do.end.sw.epilog_crit_edge ], [ 0, %do.end63 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pcm_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %pdc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdc, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !49
  %dma_buffer = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_buffer, align 4
  %sub = sub i32 %14, %16
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 21
  %17 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %18
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %19 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %20)
  %cmp = icmp eq i32 %div.i, %20
  %spec.store.select = select i1 %cmp, i32 0, i32 %div.i
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pcm_dma_irq(i32 noundef %ssc_sr, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = load i32, ptr @atmel_pcm_dma_irq.count, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @atmel_pcm_dma_irq.count, align 4
  %mask = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mask, align 4
  %ssc_endbuf = getelementptr inbounds %struct.atmel_ssc_mask, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %ssc_endbuf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ssc_endbuf, align 4
  %and = and i32 %10, %ssc_sr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.end:                                           ; preds = %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %11 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %cond = select i1 %cmp, ptr @.str.6, ptr @.str.7
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull %cond, ptr noundef %14, i32 noundef %ssc_sr, i32 noundef %inc) #8
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mask, align 4
  %pdc_disable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %pdc_disable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pdc_disable, align 4
  %ssc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #4, !srcloc !48
  %period_size = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %period_size, align 4
  %period_ptr = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 4
  %25 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %period_ptr, align 4
  %add = add i32 %26, %24
  store i32 %add, ptr %period_ptr, align 4
  %dma_buffer_end = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 2
  %27 = ptrtoint ptr %dma_buffer_end to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_buffer_end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp4.not = icmp ult i32 %add, %28
  br i1 %cmp4.not, label %do.end.if.end_crit_edge, label %if.then5

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %dma_buffer = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 1
  %29 = ptrtoint ptr %dma_buffer to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_buffer, align 4
  %31 = ptrtoint ptr %period_ptr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %period_ptr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %do.end.if.end_crit_edge
  %32 = ptrtoint ptr %period_ptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period_ptr, align 4
  %34 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ssc, align 4
  %regs9 = getelementptr inbounds %struct.ssc_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %regs9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs9, align 4
  %pdc = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdc, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add.ptr10 = getelementptr i8, ptr %37, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %33) #4, !srcloc !48
  %42 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %period_size, align 4
  %pdc_xfer_size = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 1
  %44 = ptrtoint ptr %pdc_xfer_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdc_xfer_size, align 4
  %div = udiv i32 %43, %45
  %46 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ssc, align 4
  %regs13 = getelementptr inbounds %struct.ssc_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs13, align 4
  %50 = ptrtoint ptr %pdc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdc, align 4
  %xcr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %xcr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xcr, align 4
  %add.ptr15 = getelementptr i8, ptr %49, i32 %53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %div) #4, !srcloc !48
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mask, align 4
  %pdc_enable = getelementptr inbounds %struct.atmel_ssc_mask, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %pdc_enable to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdc_enable, align 4
  %58 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ssc, align 4
  %regs18 = getelementptr inbounds %struct.ssc_device, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %regs18 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs18, align 4
  %add.ptr19 = getelementptr i8, ptr %61, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %57) #4, !srcloc !48
  br label %if.end20

if.end20:                                         ; preds = %if.end, %entry.if.end20_crit_edge
  %62 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mask, align 4
  %ssc_endx = getelementptr inbounds %struct.atmel_ssc_mask, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %ssc_endx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ssc_endx, align 4
  %and22 = and i32 %65, %ssc_sr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end20.if.end47_crit_edge, label %if.then24

if.end20.if.end47_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end47

if.then24:                                        ; preds = %if.end20
  %period_size25 = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 3
  %66 = ptrtoint ptr %period_size25 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %period_size25, align 4
  %period_ptr26 = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %period_ptr26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %period_ptr26, align 4
  %add27 = add i32 %69, %67
  store i32 %add27, ptr %period_ptr26, align 4
  %dma_buffer_end29 = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %dma_buffer_end29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_buffer_end29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add27, i32 %71)
  %cmp30.not = icmp ult i32 %add27, %71
  br i1 %cmp30.not, label %if.then24.if.end34_crit_edge, label %if.then31

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then31:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  %dma_buffer32 = getelementptr inbounds %struct.atmel_runtime_data, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %dma_buffer32 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_buffer32, align 4
  %74 = ptrtoint ptr %period_ptr26 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %period_ptr26, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.then24.if.end34_crit_edge
  %75 = ptrtoint ptr %period_ptr26 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %period_ptr26, align 4
  %ssc36 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 2
  %77 = ptrtoint ptr %ssc36 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ssc36, align 4
  %regs37 = getelementptr inbounds %struct.ssc_device, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %regs37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs37, align 4
  %pdc38 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 3
  %81 = ptrtoint ptr %pdc38 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pdc38, align 4
  %xnpr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %xnpr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %xnpr, align 4
  %add.ptr39 = getelementptr i8, ptr %80, i32 %84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %76) #4, !srcloc !48
  %85 = ptrtoint ptr %period_size25 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %period_size25, align 4
  %pdc_xfer_size41 = getelementptr inbounds %struct.atmel_pcm_dma_params, ptr %5, i32 0, i32 1
  %87 = ptrtoint ptr %pdc_xfer_size41 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pdc_xfer_size41, align 4
  %div42 = udiv i32 %86, %88
  %89 = ptrtoint ptr %ssc36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ssc36, align 4
  %regs44 = getelementptr inbounds %struct.ssc_device, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs44, align 4
  %93 = ptrtoint ptr %pdc38 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdc38, align 4
  %xncr = getelementptr inbounds %struct.atmel_pdc_regs, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %xncr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %xncr, align 4
  %add.ptr46 = getelementptr i8, ptr %92, i32 %96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %div42) #4, !srcloc !48
  br label %if.end47

if.end47:                                         ; preds = %if.end34, %if.end20.if.end47_crit_edge
  tail call void @snd_pcm_period_elapsed(ptr noundef %substream) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__ksymtab_atmel_pcm_pdc_platform_register, !1, !"__ksymtab_atmel_pcm_pdc_platform_register", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 327, i32 1}
!2 = !{ptr @__UNIQUE_ID_author244, !3, !"__UNIQUE_ID_author244", i1 false, i1 false}
!3 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 329, i32 1}
!4 = !{ptr @__UNIQUE_ID_description245, !5, !"__UNIQUE_ID_description245", i1 false, i1 false}
!5 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 330, i32 1}
!6 = !{ptr @__UNIQUE_ID_file246, !7, !"__UNIQUE_ID_file246", i1 false, i1 false}
!7 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 331, i32 1}
!8 = !{ptr @__UNIQUE_ID_license247, !7, !"__UNIQUE_ID_license247", i1 false, i1 false}
!9 = !{ptr @atmel_soc_platform, !10, !"atmel_soc_platform", i1 false, i1 false}
!10 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 311, i32 46}
!11 = !{ptr @atmel_pcm_hardware, !12, !"atmel_pcm_hardware", i1 false, i1 false}
!12 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 60, i32 38}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 155, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @atmel_pcm_hw_params.__UNIQUE_ID_ddebug240, !14, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!19 = !{ptr @atmel_pcm_dma_irq.count, !20, !"count", i1 false, i1 false}
!20 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 93, i32 13}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 98, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @atmel_pcm_dma_irq._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @atmel_pcm_dma_irq._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 200, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug241, !29, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 219, i32 3}
!34 = !{ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug242, !33, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/atmel/atmel-pcm-pdc.c", i32 233, i32 3}
!37 = !{ptr @atmel_pcm_trigger.__UNIQUE_ID_ddebug243, !36, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148961231, i64 2148961236, i64 2148961249, i64 2148961293, i64 2148961327, i64 2148961348}
!48 = !{i64 6279536}
!49 = !{i64 6279954}
