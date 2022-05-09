; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/idma.c_pt.bc'
source_filename = "../sound/soc/samsung/idma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+idma_reg_addr_init\22, \22a\22\09"
module asm "\09.weak\09__crc_idma_reg_addr_init\09\09\09\09"
module asm "\09.long\09__crc_idma_reg_addr_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_idma_reg_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22idma_reg_addr_init\22\09\09\09\09\09"
module asm "__kstrtabns_idma_reg_addr_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.idma_info = type { %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
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
%struct.idma_ctrl = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@idma_reg_addr_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@idma = internal global { %struct.idma_info, [44 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&idma.lock\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_idma_reg_addr_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_idma_reg_addr_init = external dso_local constant [0 x i8], align 1
@__ksymtab_idma_reg_addr_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @idma_reg_addr_init to i32), ptr @__kstrtab_idma_reg_addr_init, ptr @__kstrtabns_idma_reg_addr_init }, section "___ksymtab_gpl+idma_reg_addr_init", align 4
@__initcall__kmod_snd_soc_idma__240_427_asoc_idma_driver_init6 = internal global ptr @asoc_idma_driver_init, section ".initcall6.init", align 4
@asoc_idma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @asoc_idma_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_asoc_idma_driver_exit = internal global ptr @asoc_idma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [64 x i8] c"snd_soc_idma.author=Jaswinder Singh, <jassisinghbrar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [50 x i8] c"snd_soc_idma.description=Samsung ASoC IDMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [49 x i8] c"snd_soc_idma.file=sound/soc/samsung/snd-soc-idma\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [25 x i8] c"snd_soc_idma.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"samsung-idma\00", [19 x i8] zeroinitializer }, align 32
@idma_irq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@asoc_idma_platform = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idma_new, ptr @idma_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @idma_open, ptr @idma_close, ptr null, ptr @idma_hw_params, ptr @idma_hw_free, ptr @idma_prepare, ptr @idma_trigger, ptr null, ptr @idma_pointer, ptr null, ptr null, ptr null, ptr @idma_mmap, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@idma_hardware = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 852227, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 163840, i32 128, i32 131072, i32 1, i32 2, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@idma_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013fail to claim i2s irq , ret = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idma_open\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/samsung/idma.c\00", [39 x i8] zeroinitializer }, align 32
@idma_open._entry_ptr = internal global ptr @idma_open._entry, section ".printk_index", align 4
@idma_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&prtd->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@idma_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.5, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013idma_close called with prtd == NULL\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idma_close\00", [21 x i8] zeroinitializer }, align 32
@idma_close._entry_ptr = internal global ptr @idma_close._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.12 = private unnamed_addr constant [5 x i8] c"idma\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 54, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 390, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"asoc_idma_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 419, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 421, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"idma_irq\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 56, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"asoc_idma_platform\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 396, i32 46 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"idma_hardware\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 24, i32 38 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 300, i32 42 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 302, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 307, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../sound/soc/samsung/idma.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 323, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_asoc_idma_driver_exit, ptr @__initcall__kmod_snd_soc_idma__240_427_asoc_idma_driver_init6, ptr @__ksymtab_idma_reg_addr_init, ptr @asoc_idma_driver_exit, ptr @idma_close._entry, ptr @idma_close._entry_ptr, ptr @idma_open._entry, ptr @idma_open._entry_ptr, ptr @idma_reg_addr_init.__key, ptr @idma, ptr @.str, ptr @asoc_idma_driver, ptr @.str.1, ptr @idma_irq, ptr @asoc_idma_platform, ptr @idma_hardware, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @idma_open.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_reg_addr_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_idma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_irq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asoc_idma_platform to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_hardware to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idma_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @idma_reg_addr_init(ptr noundef %regs, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @idma, ptr noundef nonnull @.str, ptr noundef nonnull @idma_reg_addr_init.__key, i16 noundef signext 3) #7
  store ptr %regs, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  store i32 %addr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_idma_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @asoc_idma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @asoc_idma_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @asoc_idma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @asoc_idma_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  store i32 %call, ptr @idma_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @asoc_idma_platform, ptr noundef null, i32 noundef 0) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_new(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %rtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %snd_card = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %snd_card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %snd_card, align 4
  %pcm2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 7
  %4 = ptrtoint ptr %pcm2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcm2, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %coherent_dma_mask.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 19
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %7, i64 noundef 4294967295) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %7, i64 noundef 4294967295) #7
  %substream = getelementptr inbounds %struct.snd_pcm, ptr %5, i32 0, i32 8, i32 0, i32 4
  %9 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %substream, align 8
  %tobool3.not = icmp eq ptr %10, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dma_buffer.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %dev3.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8, i32 0, i32 3
  %15 = ptrtoint ptr %dev3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %dev3.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8, i32 4
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %private_data.i, align 4
  %17 = ptrtoint ptr %dma_buffer.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %dma_buffer.i, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %addr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %addr.i, align 4
  %bytes.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8, i32 3
  %20 = ptrtoint ptr %bytes.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 163840, ptr %bytes.i, align 4
  %call.i = tail call ptr @ioremap(i32 noundef %18, i32 noundef 163840) #7
  %area.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %10, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %area.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %area.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  %..i = select i1 %tobool.not.i, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %..i, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %pcm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %substream1 = getelementptr inbounds %struct.snd_pcm, ptr %pcm, i32 0, i32 8, i32 0, i32 4
  %0 = ptrtoint ptr %substream1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %area = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %area, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iounmap(ptr noundef nonnull %3) #7
  %4 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %area, align 4
  %addr = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 8, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_open(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_soc_set_runtime_hwparams(ptr noundef %substream, ptr noundef nonnull @idma_hardware) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 76) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load i32, ptr @idma_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @iis_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end, label %do.body8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call.i) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @idma_open.__key, i16 noundef signext 3) #7
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %private_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %do.body8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_close(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = load i32, ptr @idma_irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %4, ptr noundef %3) #7
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_hw_params(ptr nocapture noundef readnone %component, ptr noundef %substream, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %4, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  %6 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 32
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %8 = or i32 %7, 671088640
  %9 = or i32 %5, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %8) #7, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %9) #7, !srcloc !56
  %dma_buffer = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8
  %12 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime1, align 4
  %tobool.not.i = icmp eq ptr %dma_buffer, null
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 53
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dma_buffer, ptr %dma_buffer_p2.i, align 8
  %area.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %area.i, align 4
  %dma_area.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 50
  %17 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dma_area.i, align 4
  %addr.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 51
  %20 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %dma_addr.i, align 8
  %bytes.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes.i, align 4
  br label %snd_pcm_set_runtime_buffer.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %dma_buffer_p2.i, align 8
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 50
  %24 = ptrtoint ptr %dma_area3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dma_area3.i, align 4
  %dma_addr4.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 51
  %25 = ptrtoint ptr %dma_addr4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %dma_addr4.i, align 8
  br label %snd_pcm_set_runtime_buffer.exit

snd_pcm_set_runtime_buffer.exit:                  ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.else.i ], [ %22, %if.then.i ]
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %13, i32 0, i32 52
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i, ptr %26, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 10
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %30 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %dma_bytes, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %31 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_addr, align 8
  %pos = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 3
  %33 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pos, align 4
  %start = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %start, align 4
  %arrayidx.i.i36 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 7
  %35 = ptrtoint ptr %arrayidx.i.i36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i36, align 4
  %period = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %period, align 4
  %arrayidx.i.i37 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %arrayidx.i.i37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.i37, align 4
  %periodsz = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 6
  %40 = ptrtoint ptr %periodsz to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %periodsz, align 4
  %41 = load i32, ptr %dma_addr, align 8
  %42 = load i32, ptr %dma_bytes, align 4
  %add = add i32 %42, %41
  %end = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 4
  %43 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %end, align 4
  %44 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %runtime1, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private_data.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %47) #7
  %cb1.i = getelementptr inbounds %struct.idma_ctrl, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @idma_done, ptr %cb1.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %47) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idma_hw_free(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1.i, align 4
  %dma_area3.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 50
  %2 = call ptr @memset(ptr %dma_area3.i, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_prepare(ptr nocapture noundef readnone %component, ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %start = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start, align 4
  %pos = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %pos, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #7
  %9 = and i32 %8, -16777218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #7, !srcloc !56
  tail call void @_raw_spin_unlock(ptr noundef nonnull @idma) #7
  %11 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 44
  %13 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %14) #7
  %token.i = getelementptr inbounds %struct.idma_ctrl, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %token.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %substream, ptr %token.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %14) #7
  %16 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %periodsz.i = getelementptr inbounds %struct.idma_ctrl, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %periodsz.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %periodsz.i, align 4
  %add.i = add i32 %18, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %add.i) #7
  %20 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr.i3 = getelementptr i8, ptr %20, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #7, !srcloc !56
  %21 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %23 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr7.i = getelementptr i8, ptr %23, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %22) #7, !srcloc !56
  %24 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr8.i = getelementptr i8, ptr %24, i32 40
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %26 = and i32 %25, -65536
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  %dma_bytes.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 52
  %28 = ptrtoint ptr %dma_bytes.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_bytes.i, align 4
  %30 = shl i32 %29, 14
  %shl.i = and i32 %30, -65536
  %or.i = or i32 %shl.i, %27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %32 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr14.i = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %31) #7, !srcloc !56
  %33 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr17.i = getelementptr i8, ptr %33, i32 32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %35 = or i32 %34, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %36 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr25.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %35) #7, !srcloc !56
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_trigger(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 6, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge9
    i32 4, label %entry.sw.bb_crit_edge10
    i32 5, label %entry.sw.bb1_crit_edge
    i32 0, label %entry.sw.bb1_crit_edge11
    i32 3, label %entry.sw.bb1_crit_edge12
  ]

entry.sw.bb1_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge10:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge9:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge9, %entry.sw.bb_crit_edge10
  %state = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %or = or i32 %6, 1
  store i32 %or, ptr %state, align 4
  %7 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 32
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #7
  %9 = or i32 %8, 16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #7, !srcloc !56
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge11, %entry.sw.bb1_crit_edge12
  %state2 = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state2, align 4
  %and = and i32 %12, -2
  store i32 %and, ptr %state2, align 4
  %13 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr.i7 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void @_raw_spin_lock(ptr noundef nonnull @idma) #7
  %15 = and i32 %14, -16777218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr3.i8 = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i8, i32 %15) #7, !srcloc !56
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %sw.bb
  tail call void @_raw_spin_unlock(ptr noundef nonnull @idma) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @_raw_spin_unlock(ptr noundef %3) #7
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_pointer(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  tail call void @_raw_spin_lock(ptr noundef %3) #7
  %4 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %7 = and i32 %6, -256
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %mul.i = shl nuw nsw i32 %8, 2
  %start = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start, align 4
  %add.i = sub i32 %4, %10
  %sub = add i32 %add.i, %mul.i
  tail call void @_raw_spin_unlock(ptr noundef %3) #7
  %11 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %runtime1, align 4
  %mul.i7 = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i7, %14
  ret i32 %div.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idma_mmap(ptr nocapture noundef readnone %component, ptr nocapture noundef readonly %substream, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %2 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %3, -61
  store i32 %and, ptr %vm_page_prot, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  %sub = sub i32 %5, %7
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %8 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_pgoff, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 51
  %10 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr, align 8
  %12 = lshr i32 %11, 12
  %13 = add i32 %12, %9
  %shr = and i32 %13, 1048575
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %7, i32 noundef %shr, i32 noundef %sub, i32 noundef %and) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_set_runtime_hwparams(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iis_irq(i32 noundef %irqno, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr = getelementptr i8, ptr %0, i32 32
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !52
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %and = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %entry
  %or = or i32 %2, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  %4 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #7, !srcloc !56
  %5 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 48
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !52
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %8 = load i32, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 2), align 4
  %sub = sub i32 %7, %8
  %periodsz = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 6
  %9 = ptrtoint ptr %periodsz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %periodsz, align 4
  %add = add i32 %sub, %10
  %end = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 4
  %11 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end, align 4
  %start = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 2
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start, align 4
  %sub10 = sub i32 %12, %14
  %rem = urem i32 %add, %sub10
  %add11 = add i32 %rem, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %add11)
  %16 = load ptr, ptr getelementptr inbounds (%struct.idma_info, ptr @idma, i32 0, i32 1), align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %15) #7, !srcloc !56
  %cb = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 8
  %17 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cb, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %if.then.if.end19_crit_edge, label %if.then17

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %token = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 7
  %19 = ptrtoint ptr %token to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %token, align 4
  %period = getelementptr inbounds %struct.idma_ctrl, ptr %dev_id, i32 0, i32 5
  %21 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %period, align 4
  tail call void %18(ptr noundef %20, i32 noundef %22) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idma_done(ptr noundef %id, i32 noundef %bytes_xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %id, i32 0, i32 11
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.idma_ctrl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @snd_pcm_period_elapsed(ptr noundef %id) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @idma_reg_addr_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/idma.c", i32 390, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_idma_reg_addr_init, !4, !"__ksymtab_idma_reg_addr_init", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/idma.c", i32 394, i32 1}
!5 = !{ptr @__initcall__kmod_snd_soc_idma__240_427_asoc_idma_driver_init6, !6, !"__initcall__kmod_snd_soc_idma__240_427_asoc_idma_driver_init6", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/idma.c", i32 427, i32 1}
!7 = !{ptr @__exitcall_asoc_idma_driver_exit, !6, !"__exitcall_asoc_idma_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author241, !9, !"__UNIQUE_ID_author241", i1 false, i1 false}
!9 = !{!"../sound/soc/samsung/idma.c", i32 429, i32 1}
!10 = !{ptr @__UNIQUE_ID_description242, !11, !"__UNIQUE_ID_description242", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/idma.c", i32 430, i32 1}
!12 = !{ptr @__UNIQUE_ID_file243, !13, !"__UNIQUE_ID_file243", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/idma.c", i32 431, i32 1}
!14 = !{ptr @__UNIQUE_ID_license244, !13, !"__UNIQUE_ID_license244", i1 false, i1 false}
!15 = !{ptr @idma, !16, !"idma", i1 false, i1 false}
!16 = !{!"../sound/soc/samsung/idma.c", i32 54, i32 3}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/samsung/idma.c", i32 421, i32 11}
!19 = !{ptr @asoc_idma_driver, !20, !"asoc_idma_driver", i1 false, i1 false}
!20 = !{!"../sound/soc/samsung/idma.c", i32 419, i32 31}
!21 = !{ptr @idma_irq, !22, !"idma_irq", i1 false, i1 false}
!22 = !{!"../sound/soc/samsung/idma.c", i32 56, i32 12}
!23 = !{ptr @asoc_idma_platform, !24, !"asoc_idma_platform", i1 false, i1 false}
!24 = !{!"../sound/soc/samsung/idma.c", i32 396, i32 46}
!25 = !{ptr @idma_hardware, !26, !"idma_hardware", i1 false, i1 false}
!26 = !{!"../sound/soc/samsung/idma.c", i32 24, i32 38}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/samsung/idma.c", i32 300, i32 42}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/samsung/idma.c", i32 302, i32 3}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @idma_open._entry, !30, !"_entry", i1 false, i1 false}
!34 = !{ptr @idma_open._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @idma_open.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../sound/soc/samsung/idma.c", i32 307, i32 2}
!37 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/samsung/idma.c", i32 323, i32 3}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @idma_close._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @idma_close._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 4206379}
!53 = !{i64 2154834678}
!54 = !{i64 2154835165}
!55 = !{i64 2154835411}
!56 = !{i64 4205961}
!57 = !{i64 2154835801}
!58 = !{i64 2154833755}
!59 = !{i64 2154834015}
!60 = !{i64 2154830906}
!61 = !{i64 2154831298}
!62 = !{i64 2154831959}
!63 = !{i64 2154832205}
!64 = !{i64 2154832866}
!65 = !{i64 2154833094}
!66 = !{i64 2154830688}
!67 = !{i64 2154836942}
!68 = !{i64 2154837183}
!69 = !{i64 2154837853}
!70 = !{i64 2154838072}
