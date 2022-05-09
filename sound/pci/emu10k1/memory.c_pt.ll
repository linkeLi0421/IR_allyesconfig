; ModuleID = '/llk/IR_all_yes/sound/pci/emu10k1/memory.c_pt.bc'
source_filename = "../sound/pci/emu10k1/memory.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_emu10k1_memblk_map\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_memblk_map\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_memblk_map\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_memblk_map:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_memblk_map\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_memblk_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_synth_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_synth_alloc\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_synth_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_synth_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_synth_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_synth_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_synth_free\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_synth_free\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_synth_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_synth_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_synth_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_synth_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_synth_bzero\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_synth_bzero\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_synth_bzero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_synth_bzero:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_synth_bzero\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_synth_bzero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_emu10k1_synth_copy_from_user\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_emu10k1_synth_copy_from_user\09\09\09\09"
module asm "\09.long\09__crc_snd_emu10k1_synth_copy_from_user\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_emu10k1_synth_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_emu10k1_synth_copy_from_user\22\09\09\09\09\09"
module asm "__kstrtabns_snd_emu10k1_synth_copy_from_user:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_emu10k1 = type { i32, i32, i8, ptr, i32, i32, i32, i16, i32, i32, i32, i32, i8, i32, i32, %struct.snd_dma_buffer, %struct.snd_dma_buffer, %struct.snd_dma_device, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, [3 x i32], i32, [4 x [2 x i8]], %struct.snd_emu10k1_fx8010, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, [64 x %struct.snd_emu10k1_voice], [4 x %struct.snd_emu10k1_voice], %struct.snd_emu10k1_voice, i32, i32, i32, %struct.snd_emu1010, [32 x %struct.snd_emu10k1_pcm_mixer], [16 x %struct.snd_emu10k1_pcm_mixer], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_emu10k1_midi, %struct.snd_emu10k1_midi, [2 x i32], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_emu10k1_fx8010 = type { i16, i16, i16, i16, i32, %struct.snd_dma_buffer, i32, [128 x i8], i32, i32, %struct.list_head, %struct.mutex, [8 x %struct.snd_emu10k1_fx8010_pcm], %struct.spinlock, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_emu10k1_fx8010_pcm = type { i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, [32 x i8], %struct.snd_pcm_indirect, i32, i32, %struct.snd_emu10k1_fx8010_irq }
%struct.snd_pcm_indirect = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1_fx8010_irq = type { ptr, ptr, i16, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.snd_emu10k1_voice = type { ptr, i32, i8, ptr, ptr }
%struct.snd_emu1010 = type { [64 x i32], [64 x i32], i32, i32, i32, i32, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_emu10k1_pcm_mixer = type { [3 x [8 x i8]], [3 x [8 x i8]], [3 x i16], ptr }
%struct.snd_emu10k1_midi = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, ptr }
%struct.snd_emu10k1_memblk = type { %struct.snd_util_memblk, i32, i32, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.snd_util_memblk = type { i32, i32, %struct.list_head }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.snd_util_memhdr = type { i32, %struct.list_head, i32, i32, i32, %struct.mutex }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.74, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.74 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_snd_emu10k1_memblk_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_memblk_map = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_memblk_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_memblk_map to i32), ptr @__kstrtab_snd_emu10k1_memblk_map, ptr @__kstrtabns_snd_emu10k1_memblk_map }, section "___ksymtab+snd_emu10k1_memblk_map", align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/pci/emu10k1/memory.c\00", [37 x i8] zeroinitializer }, align 32
@snd_emu10k1_alloc_pages._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.snd_emu10k1_alloc_pages = private unnamed_addr constant [24 x i8] c"snd_emu10k1_alloc_pages\00", align 1
@snd_emu10k1_alloc_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.snd_emu10k1_alloc_pages, ptr @.str, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"emu: failure page = %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_emu10k1_alloc_pages._entry_ptr = internal global ptr @snd_emu10k1_alloc_pages._entry, section ".printk_index", align 4
@__kstrtab_snd_emu10k1_synth_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_synth_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_synth_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_synth_alloc to i32), ptr @__kstrtab_snd_emu10k1_synth_alloc, ptr @__kstrtabns_snd_emu10k1_synth_alloc }, section "___ksymtab+snd_emu10k1_synth_alloc", align 4
@__kstrtab_snd_emu10k1_synth_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_synth_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_synth_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_synth_free to i32), ptr @__kstrtab_snd_emu10k1_synth_free, ptr @__kstrtabns_snd_emu10k1_synth_free }, section "___ksymtab+snd_emu10k1_synth_free", align 4
@__kstrtab_snd_emu10k1_synth_bzero = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_synth_bzero = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_synth_bzero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_synth_bzero to i32), ptr @__kstrtab_snd_emu10k1_synth_bzero, ptr @__kstrtabns_snd_emu10k1_synth_bzero }, section "___ksymtab+snd_emu10k1_synth_bzero", align 4
@__kstrtab_snd_emu10k1_synth_copy_from_user = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_emu10k1_synth_copy_from_user = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_emu10k1_synth_copy_from_user = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_emu10k1_synth_copy_from_user to i32), ptr @__kstrtab_snd_emu10k1_synth_copy_from_user, ptr @__kstrtabns_snd_emu10k1_synth_copy_from_user }, section "___ksymtab+snd_emu10k1_synth_copy_from_user", align 4
@map_memblk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"trying to map zero (reserved) page\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"map_memblk\00", [21 x i8] zeroinitializer }, align 32
@map_memblk._entry_ptr = internal global ptr @map_memblk._entry, section ".printk_index", align 4
@set_ptb_entry.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str, ptr @.str.9, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_emu10k1\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set_ptb_entry\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mapped page %d to entry %.8x\0A\00", [34 x i8] zeroinitializer }, align 32
@set_silent_ptb.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_silent_ptb\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mapped silent page %d to entry %.8x\0A\00", [59 x i8] zeroinitializer }, align 32
@is_valid_page._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.is_valid_page = private unnamed_addr constant [14 x i8] c"is_valid_page\00", align 1
@is_valid_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.is_valid_page, ptr @.str, i32 242, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"max memory size is 0x%lx (addr = 0x%lx)!!\0A\00", [53 x i8] zeroinitializer }, align 32
@is_valid_page._entry_ptr = internal global ptr @is_valid_page._entry, section ".printk_index", align 4
@is_valid_page._rs.13 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@is_valid_page._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.is_valid_page, ptr @.str, i32 246, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"page is not aligned\0A\00", [43 x i8] zeroinitializer }, align 32
@is_valid_page._entry_ptr.16 = internal global ptr @is_valid_page._entry.14, section ".printk_index", align 4
@offset_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 562, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"access to NULL ptr: page = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"offset_ptr\00", [21 x i8] zeroinitializer }, align 32
@offset_ptr._entry_ptr = internal global ptr @offset_ptr._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 309, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 338, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 143, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 48, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 60, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 240, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 246, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private constant [30 x i8] c"../sound/pci/emu10k1/memory.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 561, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 230, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 214, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__ksymtab_snd_emu10k1_memblk_map, ptr @__ksymtab_snd_emu10k1_synth_alloc, ptr @__ksymtab_snd_emu10k1_synth_bzero, ptr @__ksymtab_snd_emu10k1_synth_copy_from_user, ptr @__ksymtab_snd_emu10k1_synth_free, ptr @is_valid_page._entry, ptr @is_valid_page._entry.14, ptr @is_valid_page._entry_ptr, ptr @is_valid_page._entry_ptr.16, ptr @map_memblk._entry, ptr @map_memblk._entry_ptr, ptr @offset_ptr._entry, ptr @offset_ptr._entry_ptr, ptr @snd_emu10k1_alloc_pages._entry, ptr @snd_emu10k1_alloc_pages._entry_ptr, ptr @.str, ptr @snd_emu10k1_alloc_pages._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @is_valid_page._rs, ptr @.str.12, ptr @is_valid_page._rs.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_alloc_pages._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_emu10k1_alloc_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_memblk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_page._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_page._rs.13 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_valid_page._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offset_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_memblk_map(ptr noundef %emu, ptr noundef %blk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %memblk_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %memblk_lock) #6
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 4
  %0 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mapped_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp5 = icmp sgt i32 %1, -1
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mapped_order_link = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7
  %mapped_order_link_head = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mapped_order_link) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %mapped_order_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapped_order_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 21, i32 1
  %8 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mapped_order_link, ptr noundef %9, ptr noundef %mapped_order_link_head) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mapped_order_link, ptr %prev.i2.i, align 4
  %11 = ptrtoint ptr %mapped_order_link to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %mapped_order_link_head, ptr %mapped_order_link, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %mapped_order_link, ptr %9, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = tail call fastcc i32 @map_memblk(ptr noundef %emu, ptr noundef %blk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %if.end
  %mapped_order_link_head12 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 21
  %14 = ptrtoint ptr %mapped_order_link_head12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapped_order_link_head12, align 4
  %cmp14.not50 = icmp eq ptr %15, %mapped_order_link_head12
  br i1 %cmp14.not50, label %if.then11.cleanup_crit_edge, label %for.body.lr.ph

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then11
  %pages = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.051 = phi ptr [ %15, %for.body.lr.ph ], [ %17, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %p.051 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p.051, align 4
  %map_locked = getelementptr i8, ptr %p.051, i32 -12
  %18 = ptrtoint ptr %map_locked to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %p.051, i32 -44
  %call20 = tail call fastcc i32 @unmap_memblk(ptr noundef %emu, ptr noundef %add.ptr)
  %20 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %21)
  %cmp21.not = icmp slt i32 %call20, %21
  br i1 %cmp21.not, label %if.end19.for.inc_crit_edge, label %if.then23

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call fastcc i32 @map_memblk(ptr noundef %emu, ptr noundef %blk)
  br label %cleanup

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %17, %mapped_order_link_head12
  br i1 %cmp14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then23, %if.then11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__list_del_entry.exit.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ], [ %call24, %if.then23 ], [ %call8, %if.end.cleanup_crit_edge ], [ %call8, %if.then11.cleanup_crit_edge ], [ %call8, %for.inc.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %memblk_lock, i32 noundef %call2) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @map_memblk(ptr noundef %emu, ptr noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pages = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 3
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pages, align 4
  %mapped_link_head.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 20
  %2 = ptrtoint ptr %mapped_link_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pos.061.i = load ptr, ptr %mapped_link_head.i, align 4
  %cmp.i.not62.i = icmp eq ptr %pos.061.i, %mapped_link_head.i
  br i1 %cmp.i.not62.i, label %entry.for.end.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pos.067.i = phi ptr [ %pos.0.i, %for.inc.i.for.body.i_crit_edge ], [ %pos.061.i, %entry.for.body.i_crit_edge ]
  %page.066.i = phi i32 [ %page.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %candidate.065.i = phi ptr [ %candidate.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %mapped_link_head.i, %entry.for.body.i_crit_edge ]
  %max_size.064.i = phi i32 [ %max_size.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %found_page.063.i = phi i32 [ %found_page.2.ph.i, %for.inc.i.for.body.i_crit_edge ], [ -12, %entry.for.body.i_crit_edge ]
  %mapped_page.i = getelementptr i8, ptr %pos.067.i, i32 -8
  %3 = ptrtoint ptr %mapped_page.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mapped_page.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %sub.i = sub i32 %4, %page.066.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %1)
  %cmp4.i = icmp eq i32 %sub.i, %1
  br i1 %cmp4.i, label %if.end.i.search_empty_map_area.exit_crit_edge, label %if.else.i

if.end.i.search_empty_map_area.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %search_empty_map_area.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %max_size.064.i)
  %cmp6.i = icmp sgt i32 %sub.i, %max_size.064.i
  %found_page.1.i = select i1 %cmp6.i, i32 %page.066.i, i32 %found_page.063.i
  %5 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 %max_size.064.i) #6
  %candidate.1.i = select i1 %cmp6.i, ptr %pos.067.i, ptr %candidate.065.i
  %pages.i = getelementptr i8, ptr %pos.067.i, i32 -12
  %6 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pages.i, align 4
  %add.i = add i32 %7, %4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %found_page.2.ph.i = phi i32 [ %found_page.063.i, %for.body.i.for.inc.i_crit_edge ], [ %found_page.1.i, %if.else.i ]
  %max_size.2.ph.i = phi i32 [ %max_size.064.i, %for.body.i.for.inc.i_crit_edge ], [ %5, %if.else.i ]
  %candidate.2.ph.i = phi ptr [ %candidate.065.i, %for.body.i.for.inc.i_crit_edge ], [ %candidate.1.i, %if.else.i ]
  %page.1.ph.i = phi i32 [ %page.066.i, %for.body.i.for.inc.i_crit_edge ], [ %add.i, %if.else.i ]
  %8 = ptrtoint ptr %pos.067.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %pos.0.i = load ptr, ptr %pos.067.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %mapped_link_head.i
  br i1 %cmp.i.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %found_page.0.lcssa.i = phi i32 [ -12, %entry.for.end.i_crit_edge ], [ %found_page.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %max_size.0.lcssa.i = phi i32 [ %1, %entry.for.end.i_crit_edge ], [ %max_size.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %candidate.0.lcssa.i = phi ptr [ %mapped_link_head.i, %entry.for.end.i_crit_edge ], [ %candidate.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %page.0.lcssa.i = phi i32 [ 1, %entry.for.end.i_crit_edge ], [ %page.1.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %address_mode.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %9 = ptrtoint ptr %address_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not.i = icmp eq i32 %10, 0
  %cond.i = select i1 %tobool12.not.i, i32 4096, i32 8192
  %sub13.i = sub i32 %cond.i, %page.0.lcssa.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub13.i, i32 %max_size.0.lcssa.i)
  %cmp14.not.i = icmp slt i32 %sub13.i, %max_size.0.lcssa.i
  %candidate.0.lcssa.mapped_link_head.i = select i1 %cmp14.not.i, ptr %candidate.0.lcssa.i, ptr %mapped_link_head.i
  %found_page.0.lcssa.page.0.lcssa.i = select i1 %cmp14.not.i, i32 %found_page.0.lcssa.i, i32 %page.0.lcssa.i
  br label %search_empty_map_area.exit

search_empty_map_area.exit:                       ; preds = %for.end.i, %if.end.i.search_empty_map_area.exit_crit_edge
  %pos.067.lcssa.sink.i = phi ptr [ %candidate.0.lcssa.mapped_link_head.i, %for.end.i ], [ %pos.067.i, %if.end.i.search_empty_map_area.exit_crit_edge ]
  %retval.2.i = phi i32 [ %found_page.0.lcssa.page.0.lcssa.i, %for.end.i ], [ %page.066.i, %if.end.i.search_empty_map_area.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp = icmp slt i32 %retval.2.i, 0
  br i1 %cmp, label %search_empty_map_area.exit.cleanup_crit_edge, label %if.end

search_empty_map_area.exit.cleanup_crit_edge:     ; preds = %search_empty_map_area.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %search_empty_map_area.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i)
  %cmp1 = icmp eq i32 %retval.2.i, 0
  br i1 %cmp1, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mapped_link = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.067.lcssa.sink.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mapped_link, ptr noundef %16, ptr noundef %pos.067.lcssa.sink.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add_tail.exit_crit_edge

if.end3.list_add_tail.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mapped_link, ptr %prev.i, align 4
  %18 = ptrtoint ptr %mapped_link to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pos.067.lcssa.sink.i, ptr %mapped_link, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %mapped_link, ptr %16, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end3.list_add_tail.exit_crit_edge
  %mapped_order_link = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7
  %mapped_order_link_head = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 21
  %prev.i24 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 21, i32 1
  %21 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i24, align 4
  %call.i.i25 = tail call zeroext i1 @__list_add_valid(ptr noundef %mapped_order_link, ptr noundef %22, ptr noundef %mapped_order_link_head) #6
  br i1 %call.i.i25, label %if.end.i.i27, label %list_add_tail.exit.list_add_tail.exit28_crit_edge

list_add_tail.exit.list_add_tail.exit28_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit28

if.end.i.i27:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mapped_order_link, ptr %prev.i24, align 4
  %24 = ptrtoint ptr %mapped_order_link to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mapped_order_link_head, ptr %mapped_order_link, align 4
  %prev3.i.i26 = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %prev3.i.i26 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i26, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %mapped_order_link, ptr %22, align 4
  br label %list_add_tail.exit28

list_add_tail.exit28:                             ; preds = %if.end.i.i27, %list_add_tail.exit.list_add_tail.exit28_crit_edge
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 4
  %27 = ptrtoint ptr %mapped_page to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.2.i, ptr %mapped_page, align 4
  %first_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 1
  %28 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_page, align 4
  %last_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 2
  %30 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp4.not32 = icmp sgt i32 %29, %31
  br i1 %cmp4.not32, label %list_add_tail.exit28.cleanup_crit_edge, label %for.body.lr.ph

list_add_tail.exit28.cleanup_crit_edge:           ; preds = %list_add_tail.exit28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %list_add_tail.exit28
  %page_addr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 23
  %address_mode.i29 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %area.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 16, i32 1
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %set_ptb_entry.exit.for.body_crit_edge, %for.body.lr.ph
  %pg.035 = phi i32 [ %29, %for.body.lr.ph ], [ %inc5, %set_ptb_entry.exit.for.body_crit_edge ]
  %page.033 = phi i32 [ %retval.2.i, %for.body.lr.ph ], [ %inc, %set_ptb_entry.exit.for.body_crit_edge ]
  %32 = ptrtoint ptr %page_addr_table to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %page_addr_table, align 4
  %arrayidx = getelementptr i32, ptr %33, i32 %pg.035
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx, align 4
  %36 = ptrtoint ptr %address_mode.i29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address_mode.i29, align 4
  %shl.i = shl i32 %35, %37
  %or.i = or i32 %shl.i, %page.033
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %39 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %area.i, align 4
  %arrayidx.i = getelementptr i32, ptr %40, i32 %page.033
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_ptb_entry.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@map_memblk, %if.then.i)) #6
          to label %set_ptb_entry.exit [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %46 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %area.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %47, i32 %page.033
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_ptb_entry.__UNIQUE_ID_ddebug242, ptr noundef %45, ptr noundef nonnull @.str.9, i32 noundef %page.033, i32 noundef %50) #6
  br label %set_ptb_entry.exit

set_ptb_entry.exit:                               ; preds = %if.then.i, %for.body
  %inc = add i32 %page.033, 1
  %inc5 = add i32 %pg.035, 1
  %51 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_page, align 4
  %cmp4.not = icmp sgt i32 %inc5, %52
  br i1 %cmp4.not, label %set_ptb_entry.exit.cleanup_crit_edge, label %set_ptb_entry.exit.for.body_crit_edge

set_ptb_entry.exit.for.body_crit_edge:            ; preds = %set_ptb_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

set_ptb_entry.exit.cleanup_crit_edge:             ; preds = %set_ptb_entry.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %set_ptb_entry.exit.cleanup_crit_edge, %list_add_tail.exit28.cleanup_crit_edge, %do.end, %search_empty_map_area.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.2.i, %search_empty_map_area.exit.cleanup_crit_edge ], [ 0, %list_add_tail.exit28.cleanup_crit_edge ], [ 0, %set_ptb_entry.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @unmap_memblk(ptr noundef readonly %emu, ptr noundef %blk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mapped_link = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 6
  %prev = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %mapped_link_head = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 20
  %cmp.not = icmp eq ptr %1, %mapped_link_head
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_page = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapped_page, align 4
  %pages = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pages, align 4
  %add = add i32 %5, %3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %start_page.0 = phi i32 [ %add, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %6 = ptrtoint ptr %mapped_link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapped_link, align 4
  %cmp3.not = icmp eq ptr %7, %mapped_link_head
  br i1 %cmp3.not, label %if.else9, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mapped_page8 = getelementptr i8, ptr %7, i32 -8
  %8 = ptrtoint ptr %mapped_page8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mapped_page8, align 4
  br label %if.end10

if.else9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %10 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, i32 4096, i32 8192
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then4
  %end_page.0 = phi i32 [ %9, %if.then4 ], [ %cond, %if.else9 ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mapped_link) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end10.list_del.exit_crit_edge

if.end10.list_del.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev, align 4
  %14 = ptrtoint ptr %mapped_link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapped_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end10.list_del.exit_crit_edge
  %18 = ptrtoint ptr %mapped_link to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %mapped_link, align 4
  %19 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev, align 4
  %mapped_order_link = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7
  %call.i.i34 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mapped_order_link) #6
  br i1 %call.i.i34, label %if.end.i.i37, label %list_del.exit.list_del.exit39_crit_edge

list_del.exit.list_del.exit39_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit39

if.end.i.i37:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i35 = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i.i35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i35, align 4
  %22 = ptrtoint ptr %mapped_order_link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapped_order_link, align 4
  %prev1.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i36, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit39

list_del.exit39:                                  ; preds = %if.end.i.i37, %list_del.exit.list_del.exit39_crit_edge
  %26 = ptrtoint ptr %mapped_order_link to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %mapped_order_link, align 4
  %prev.i38 = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 7, i32 1
  %27 = ptrtoint ptr %prev.i38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i38, align 4
  %mapped_page12 = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 4
  %first_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 1
  %28 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %first_page, align 4
  %last_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 2
  %30 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %last_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp13.not40 = icmp sgt i32 %29, %31
  br i1 %cmp13.not40, label %list_del.exit39.for.end_crit_edge, label %for.body.lr.ph

list_del.exit39.for.end_crit_edge:                ; preds = %list_del.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit39
  %32 = ptrtoint ptr %mapped_page12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mapped_page12, align 4
  %addr.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 15, i32 2
  %address_mode.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %area.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 16, i32 1
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  br label %for.body

for.body:                                         ; preds = %set_silent_ptb.exit.for.body_crit_edge, %for.body.lr.ph
  %mpage.042 = phi i32 [ %33, %for.body.lr.ph ], [ %inc, %set_silent_ptb.exit.for.body_crit_edge ]
  %pg.041 = phi i32 [ %29, %for.body.lr.ph ], [ %inc14, %set_silent_ptb.exit.for.body_crit_edge ]
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 4
  %36 = ptrtoint ptr %address_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %address_mode.i, align 4
  %shl.i = shl i32 %35, %37
  %or.i = or i32 %shl.i, %mpage.042
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %39 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %area.i, align 4
  %arrayidx.i = getelementptr i32, ptr %40, i32 %mpage.042
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_silent_ptb.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@unmap_memblk, %if.then.i)) #6
          to label %set_silent_ptb.exit [label %if.then.i], !srcloc !68

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %43, i32 0, i32 27
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 8
  %46 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %area.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %47, i32 %mpage.042
  %48 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx5.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @set_silent_ptb.__UNIQUE_ID_ddebug243, ptr noundef %45, ptr noundef nonnull @.str.11, i32 noundef %mpage.042, i32 noundef %50) #6
  br label %set_silent_ptb.exit

set_silent_ptb.exit:                              ; preds = %if.then.i, %for.body
  %inc = add i32 %mpage.042, 1
  %inc14 = add i32 %pg.041, 1
  %51 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %last_page, align 4
  %cmp13.not = icmp sgt i32 %inc14, %52
  br i1 %cmp13.not, label %set_silent_ptb.exit.for.end_crit_edge, label %set_silent_ptb.exit.for.body_crit_edge

set_silent_ptb.exit.for.body_crit_edge:           ; preds = %set_silent_ptb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

set_silent_ptb.exit.for.end_crit_edge:            ; preds = %set_silent_ptb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %set_silent_ptb.exit.for.end_crit_edge, %list_del.exit39.for.end_crit_edge
  %53 = ptrtoint ptr %mapped_page12 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %mapped_page12, align 4
  %sub = sub i32 %end_page.0, %start_page.0
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_emu10k1_alloc_pages(ptr noundef %emu, ptr nocapture noundef readonly %substream) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %tobool.not = icmp eq ptr %emu, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 309, i32 noundef 9, ptr noundef null) #6
  br label %cleanup136

if.end24:                                         ; preds = %entry
  %dma_bytes = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 52
  %2 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.end24.do.end44_crit_edge, label %lor.rhs

if.end24.do.end44_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

lor.rhs:                                          ; preds = %if.end24
  %address_mode = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 10
  %4 = ptrtoint ptr %address_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool27.not = icmp eq i32 %5, 0
  %mul = select i1 %tobool27.not, i32 16777216, i32 33554432
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mul)
  %cmp28.not = icmp ult i32 %3, %mul
  br i1 %cmp28.not, label %if.end60, label %lor.rhs.do.end44_crit_edge, !prof !70

lor.rhs.do.end44_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end44:                                         ; preds = %lor.rhs.do.end44_crit_edge, %if.end24.do.end44_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 312, i32 noundef 9, ptr noundef null) #6
  br label %cleanup136

if.end60:                                         ; preds = %lor.rhs
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 19
  %6 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %memhdr, align 4
  %tobool62.not = icmp eq ptr %7, null
  br i1 %tobool62.not, label %do.end80, label %if.end96, !prof !69

do.end80:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #6
  br label %cleanup136

if.end96:                                         ; preds = %if.end60
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %period_size, align 4
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp97.not = icmp ult i32 %9, %11
  br i1 %cmp97.not, label %if.end96.cond.end_crit_edge, label %cond.true

if.end96.cond.end_crit_edge:                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %delay_pcm_irq = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 13
  %12 = ptrtoint ptr %delay_pcm_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay_pcm_irq, align 4
  %mul98 = shl i32 %13, 1
  %phi.bo = add i32 %mul98, 4095
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end96.cond.end_crit_edge
  %cond99 = phi i32 [ %phi.bo, %cond.true ], [ 4095, %if.end96.cond.end_crit_edge ]
  %block_mutex = getelementptr inbounds %struct.snd_util_memhdr, ptr %7, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex, i32 noundef 0) #6
  %14 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_bytes, align 4
  %sub.i = add i32 %cond99, %15
  %shr.i = lshr i32 %sub.i, 12
  %16 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memhdr, align 4
  %block.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %p.038.i = load ptr, ptr %block.i, align 4
  %cmp.i.not39.i = icmp eq ptr %p.038.i, %block.i
  br i1 %cmp.i.not39.i, label %cond.end.for.end.i_crit_edge, label %cond.end.for.body.i_crit_edge

cond.end.for.body.i_crit_edge:                    ; preds = %cond.end
  br label %for.body.i

cond.end.for.end.i_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %cond.end.for.body.i_crit_edge
  %p.041.i = phi ptr [ %p.0.i, %if.end.i.for.body.i_crit_edge ], [ %p.038.i, %cond.end.for.body.i_crit_edge ]
  %page.040.i = phi i32 [ %add4.i, %if.end.i.for.body.i_crit_edge ], [ 0, %cond.end.for.body.i_crit_edge ]
  %add3.i = add i32 %page.040.i, %shr.i
  %first_page.i = getelementptr i8, ptr %p.041.i, i32 8
  %19 = ptrtoint ptr %first_page.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %first_page.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add3.i, i32 %20)
  %cmp.not.i = icmp sgt i32 %add3.i, %20
  br i1 %cmp.not.i, label %if.end.i, label %for.body.i.__found_pages.i_crit_edge

for.body.i.__found_pages.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__found_pages.i

if.end.i:                                         ; preds = %for.body.i
  %last_page.i = getelementptr i8, ptr %p.041.i, i32 12
  %21 = ptrtoint ptr %last_page.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_page.i, align 4
  %add4.i = add i32 %22, 1
  %23 = ptrtoint ptr %p.041.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %p.0.i = load ptr, ptr %p.041.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, %block.i
  br i1 %cmp.i.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %cond.end.for.end.i_crit_edge
  %page.0.lcssa.i = phi i32 [ 0, %cond.end.for.end.i_crit_edge ], [ %add4.i, %if.end.i.for.end.i_crit_edge ]
  %add6.i = add i32 %page.0.lcssa.i, %shr.i
  %max_cache_pages.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 14
  %24 = ptrtoint ptr %max_cache_pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_cache_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %25)
  %cmp7.i = icmp sgt i32 %add6.i, %25
  br i1 %cmp7.i, label %for.end.i.if.then102_crit_edge, label %for.end.i.__found_pages.i_crit_edge

for.end.i.__found_pages.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__found_pages.i

for.end.i.if.then102_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

__found_pages.i:                                  ; preds = %for.end.i.__found_pages.i_crit_edge, %for.body.i.__found_pages.i_crit_edge
  %page.037.i = phi i32 [ %page.0.lcssa.i, %for.end.i.__found_pages.i_crit_edge ], [ %page.040.i, %for.body.i.__found_pages.i_crit_edge ]
  %p.035.i = phi ptr [ %block.i, %for.end.i.__found_pages.i_crit_edge ], [ %p.041.i, %for.body.i.__found_pages.i_crit_edge ]
  %shl.i = and i32 %sub.i, -4096
  %prev.i = getelementptr inbounds %struct.list_head, ptr %p.035.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call11.i = tail call ptr @__snd_util_memblk_new(ptr noundef %17, i32 noundef %shl.i, ptr noundef %27) #6
  %cmp12.i = icmp eq ptr %call11.i, null
  br i1 %cmp12.i, label %__found_pages.i.if.then102_crit_edge, label %if.end104

__found_pages.i.if.then102_crit_edge:             ; preds = %__found_pages.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then102

if.then102:                                       ; preds = %__found_pages.i.if.then102_crit_edge, %for.end.i.if.then102_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup136

if.end104:                                        ; preds = %__found_pages.i
  %shl15.i = shl i32 %page.037.i, 12
  %offset.i = getelementptr inbounds %struct.snd_util_memblk, ptr %call11.i, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shl15.i, ptr %offset.i, align 4
  %mapped_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 4
  %29 = ptrtoint ptr %mapped_page.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %mapped_page.i.i, align 4
  %mapped_link.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 6
  %30 = ptrtoint ptr %mapped_link.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %mapped_link.i.i, ptr %mapped_link.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mapped_link.i.i, ptr %prev.i.i.i, align 4
  %mapped_order_link.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 7
  %32 = ptrtoint ptr %mapped_order_link.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %mapped_order_link.i.i, ptr %mapped_order_link.i.i, align 4
  %prev.i20.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %prev.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %mapped_order_link.i.i, ptr %prev.i20.i.i, align 4
  %map_locked.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 5
  %34 = ptrtoint ptr %map_locked.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %map_locked.i.i, align 4
  %shr.i.i = and i32 %page.037.i, 1048575
  %first_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 1
  %35 = ptrtoint ptr %first_page.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr.i.i, ptr %first_page.i.i, align 4
  %36 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call11.i, align 4
  %add.i.i = add i32 %shl15.i, -1
  %sub.i.i = add i32 %add.i.i, %37
  %shr4.i.i = lshr i32 %sub.i.i, 12
  %last_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 2
  %38 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr4.i.i, ptr %last_page.i.i, align 4
  %sub7.i.i = sub nsw i32 1, %shr.i.i
  %add8.i.i = add nsw i32 %sub7.i.i, %shr4.i.i
  %pages.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call11.i, i32 0, i32 3
  %39 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add8.i.i, ptr %pages.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i.i, i32 %shr4.i.i)
  %cmp105.not196 = icmp ugt i32 %shr.i.i, %shr4.i.i
  br i1 %cmp105.not196, label %if.end104.for.end_crit_edge, label %for.body.lr.ph

if.end104.for.end_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end104
  %addr109 = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 15, i32 2
  %dma_mask.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 11
  %page_addr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 23
  %page_ptr_table = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %if.end126.for.body_crit_edge, %for.body.lr.ph
  %idx.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %inc129, %if.end126.for.body_crit_edge ]
  %page.0197 = phi i32 [ %shr.i.i, %for.body.lr.ph ], [ %inc, %if.end126.for.body_crit_edge ]
  %shl = shl i32 %idx.0198, 12
  %40 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %41)
  %cmp107.not = icmp ult i32 %shl, %41
  br i1 %cmp107.not, label %if.else, label %if.then108

if.then108:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %addr109 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr109, align 4
  br label %if.end111

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %runtime1, align 4
  %dma_buffer_p.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %45, i32 0, i32 53
  %46 = ptrtoint ptr %dma_buffer_p.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_buffer_p.i, align 8
  %call.i = tail call i32 @snd_sgbuf_get_addr(ptr noundef %47, i32 noundef %shl) #6
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then108
  %addr.0 = phi i32 [ %43, %if.then108 ], [ %call.i, %if.else ]
  %48 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_mask.i, align 4
  %neg.i = xor i32 %49, -1
  %and.i = and i32 %addr.0, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.body.i

do.body.i:                                        ; preds = %if.end111
  %call.i182 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_page._rs, ptr noundef nonnull @__func__.is_valid_page) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool1.not.i = icmp eq i32 %call.i182, 0
  br i1 %tobool1.not.i, label %do.body.i.do.body115_crit_edge, label %do.end.i

do.body.i.do.body115_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body115

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %50 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 27
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  %54 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_mask.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.12, i32 noundef %55, i32 noundef %addr.0) #9
  br label %do.body115

if.end6.i:                                        ; preds = %if.end111
  %and7.i = and i32 %addr.0, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end126, label %do.body10.i

do.body10.i:                                      ; preds = %if.end6.i
  %call11.i183 = tail call i32 @___ratelimit(ptr noundef nonnull @is_valid_page._rs.13, ptr noundef nonnull @__func__.is_valid_page) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i183)
  %tobool12.not.i = icmp eq i32 %call11.i183, 0
  br i1 %tobool12.not.i, label %do.body10.i.do.body115_crit_edge, label %do.end15.i

do.body10.i.do.body115_crit_edge:                 ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body115

do.end15.i:                                       ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #8
  %card16.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %56 = ptrtoint ptr %card16.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card16.i, align 4
  %dev17.i = getelementptr inbounds %struct.snd_card, ptr %57, i32 0, i32 27
  %58 = ptrtoint ptr %dev17.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev17.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.15) #9
  br label %do.body115

do.body115:                                       ; preds = %do.end15.i, %do.body10.i.do.body115_crit_edge, %do.end.i, %do.body.i.do.body115_crit_edge
  %call116 = tail call i32 @___ratelimit(ptr noundef nonnull @snd_emu10k1_alloc_pages._rs, ptr noundef nonnull @__func__.snd_emu10k1_alloc_pages) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %do.body115.do.end124_crit_edge, label %do.end121

do.body115.do.end124_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end124

do.end121:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #8
  %card = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  %60 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %61, i32 0, i32 27
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.2, i32 noundef %idx.0198) #9
  br label %do.end124

do.end124:                                        ; preds = %do.end121, %do.body115.do.end124_crit_edge
  tail call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup136

if.end126:                                        ; preds = %if.end6.i
  %64 = ptrtoint ptr %page_addr_table to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %page_addr_table, align 4
  %arrayidx = getelementptr i32, ptr %65, i32 %page.0197
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %addr.0, ptr %arrayidx, align 4
  %67 = ptrtoint ptr %page_ptr_table to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %page_ptr_table, align 4
  %arrayidx127 = getelementptr ptr, ptr %68, i32 %page.0197
  %69 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %arrayidx127, align 4
  %inc = add i32 %page.0197, 1
  %inc129 = add i32 %idx.0198, 1
  %70 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %last_page.i.i, align 4
  %cmp105.not = icmp sgt i32 %inc, %71
  br i1 %cmp105.not, label %if.end126.for.end_crit_edge, label %if.end126.for.body_crit_edge

if.end126.for.body_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end126.for.end_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end126.for.end_crit_edge, %if.end104.for.end_crit_edge
  %72 = ptrtoint ptr %map_locked.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %map_locked.i.i, align 4
  %call130 = tail call i32 @snd_emu10k1_memblk_map(ptr noundef nonnull %emu, ptr noundef nonnull %call11.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %if.then132, label %if.end134

if.then132:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__snd_util_mem_free(ptr noundef nonnull %7, ptr noundef nonnull %call11.i) #6
  tail call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup136

if.end134:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup136

cleanup136:                                       ; preds = %if.end134, %if.then132, %do.end124, %if.then102, %do.end80, %do.end44, %do.end
  %retval.2 = phi ptr [ null, %do.end ], [ null, %do.end44 ], [ null, %do.end80 ], [ null, %if.then102 ], [ null, %if.then132 ], [ %call11.i, %if.end134 ], [ null, %do.end124 ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_util_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_free_pages(ptr noundef %emu, ptr noundef %blk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %emu, null
  %tobool1.not = icmp eq ptr %blk, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !69

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 365, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end24:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_emu10k1_synth_free(ptr noundef nonnull %emu, ptr noundef nonnull %blk)
  br label %return

return:                                           ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_synth_free(ptr noundef %emu, ptr noundef %memblk) #0 align 64 {
entry:
  %dmab.i.i = alloca %struct.snd_dma_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 19
  %0 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memhdr, align 4
  %block_mutex = getelementptr inbounds %struct.snd_util_memhdr, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex, i32 noundef 0) #6
  %memblk_lock = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %memblk_lock) #6
  %mapped_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %memblk, i32 0, i32 4
  %2 = ptrtoint ptr %mapped_page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mapped_page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp5 = icmp sgt i32 %3, -1
  br i1 %cmp5, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call fastcc i32 @unmap_memblk(ptr noundef %emu, ptr noundef %memblk)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %memblk_lock, i32 noundef %call2) #6
  %4 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %memhdr, align 4
  %first_page1.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %memblk, i32 0, i32 1
  %6 = ptrtoint ptr %first_page1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_page1.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %memblk, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %memblk, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %block.i.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %5, i32 0, i32 1
  %cmp.not.i.i = icmp eq ptr %9, %block.i.i
  br i1 %cmp.not.i.i, label %if.end.if.end5.i.i_crit_edge, label %if.then.i.i

if.end.if.end5.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %last_page2.i.i = getelementptr i8, ptr %9, i32 12
  %10 = ptrtoint ptr %last_page2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_page2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp3.i.i = icmp eq i32 %11, %7
  %inc.i.i = zext i1 %cmp3.i.i to i32
  %spec.select.i.i = add i32 %7, %inc.i.i
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i, %if.end.if.end5.i.i_crit_edge
  %first_page.0.i.i = phi i32 [ %7, %if.end.if.end5.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %last_page6.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %memblk, i32 0, i32 2
  %12 = ptrtoint ptr %last_page6.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_page6.i.i, align 4
  %14 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %list.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %15, %block.i.i
  br i1 %cmp10.not.i.i, label %if.end5.i.i.get_single_page_range.exit.i_crit_edge, label %if.then11.i.i

if.end5.i.i.get_single_page_range.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_single_page_range.exit.i

if.then11.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %first_page15.i.i = getelementptr i8, ptr %15, i32 8
  %16 = ptrtoint ptr %first_page15.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_page15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp16.i.i = icmp eq i32 %17, %13
  %dec.i.i = sext i1 %cmp16.i.i to i32
  %spec.select36.i.i = add i32 %13, %dec.i.i
  br label %get_single_page_range.exit.i

get_single_page_range.exit.i:                     ; preds = %if.then11.i.i, %if.end5.i.i.get_single_page_range.exit.i_crit_edge
  %last_page.0.i.i = phi i32 [ %13, %if.end5.i.i.get_single_page_range.exit.i_crit_edge ], [ %spec.select36.i.i, %if.then11.i.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dmab.i.i) #6
  %18 = getelementptr inbounds i8, ptr %dmab.i.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 255, i32 28)
  %20 = ptrtoint ptr %dmab.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %dmab.i.i, align 4
  %pci.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  %21 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pci.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %dev3.i.i = getelementptr inbounds %struct.snd_dma_device, ptr %dmab.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev1.i.i, ptr %dev3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %first_page.0.i.i, i32 %last_page.0.i.i)
  %cmp.not27.i.i = icmp sgt i32 %first_page.0.i.i, %last_page.0.i.i
  br i1 %cmp.not27.i.i, label %get_single_page_range.exit.i.synth_free_pages.exit_crit_edge, label %for.body.lr.ph.i.i

get_single_page_range.exit.i.synth_free_pages.exit_crit_edge: ; preds = %get_single_page_range.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_free_pages.exit

for.body.lr.ph.i.i:                               ; preds = %get_single_page_range.exit.i
  %page_ptr_table.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 22
  %area.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 1
  %page_addr_table.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 23
  %addr.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 2
  %bytes.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 3
  %iommu_workaround.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %page.028.i.i = phi i32 [ %first_page.0.i.i, %for.body.lr.ph.i.i ], [ %inc.i1.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %24 = ptrtoint ptr %page_ptr_table.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page_ptr_table.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %page.028.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.i.i = icmp eq ptr %27, null
  br i1 %cmp4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %area.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %area.i.i, align 4
  %29 = ptrtoint ptr %page_addr_table.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %page_addr_table.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %30, i32 %page.028.i.i
  %31 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx7.i.i, align 4
  %33 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %addr.i.i, align 4
  %34 = ptrtoint ptr %iommu_workaround.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %iommu_workaround.i.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i32 4096, i32 8192
  %36 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select.i.i, ptr %bytes.i.i, align 4
  call void @snd_dma_free_pages(ptr noundef nonnull %dmab.i.i) #6
  %37 = ptrtoint ptr %page_addr_table.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %page_addr_table.i.i, align 4
  %arrayidx12.i.i = getelementptr i32, ptr %38, i32 %page.028.i.i
  %39 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx12.i.i, align 4
  %40 = ptrtoint ptr %page_ptr_table.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %page_ptr_table.i.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %41, i32 %page.028.i.i
  %42 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx14.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i1.i = add i32 %page.028.i.i, 1
  %cmp.not.i2.i = icmp sgt i32 %inc.i1.i, %last_page.0.i.i
  br i1 %cmp.not.i2.i, label %for.inc.i.i.synth_free_pages.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.synth_free_pages.exit_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %synth_free_pages.exit

synth_free_pages.exit:                            ; preds = %for.inc.i.i.synth_free_pages.exit_crit_edge, %get_single_page_range.exit.i.synth_free_pages.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmab.i.i) #6
  call void @__snd_util_mem_free(ptr noundef %1, ptr noundef %memblk) #6
  call void @mutex_unlock(ptr noundef %block_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_alloc_pages_maybe_wider(ptr nocapture noundef readonly %emu, i32 noundef %size, ptr noundef %dmab) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_workaround = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 12
  %0 = ptrtoint ptr %iommu_workaround to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iommu_workaround, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %size, 4095
  %div9 = and i32 %sub, -4096
  %add1 = add i32 %size, 1024
  call void @__sanitizer_cov_trace_cmp4(i32 %div9, i32 %add1)
  %cmp = icmp ult i32 %div9, %add1
  %add = add i32 %size, 4096
  %spec.select = select i1 %cmp, i32 %add, i32 %size
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %size.addr.1 = phi i32 [ %spec.select, %if.then ], [ %size, %entry.if.end4_crit_edge ]
  %pci = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 31
  %2 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev, i32 noundef 0, i32 noundef %size.addr.1, ptr noundef %dmab) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_emu10k1_synth_alloc(ptr noundef %hw, i32 noundef %size) #0 align 64 {
entry:
  %dmab.i.i = alloca %struct.snd_dma_buffer, align 4
  %dmab.i = alloca %struct.snd_dma_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %memhdr = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 19
  %0 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %memhdr, align 4
  %block_mutex = getelementptr inbounds %struct.snd_util_memhdr, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %block_mutex, i32 noundef 0) #6
  %call = tail call ptr @__snd_util_mem_alloc(ptr noundef %1, i32 noundef %size) #6
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dmab.i) #6
  %2 = call ptr @memset(ptr %dmab.i, i32 255, i32 32)
  %mapped_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %mapped_page.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mapped_page.i.i, align 4
  %mapped_link.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %mapped_link.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mapped_link.i.i, ptr %mapped_link.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mapped_link.i.i, ptr %prev.i.i.i, align 4
  %mapped_order_link.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 7
  %6 = ptrtoint ptr %mapped_order_link.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mapped_order_link.i.i, ptr %mapped_order_link.i.i, align 4
  %prev.i20.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mapped_order_link.i.i, ptr %prev.i20.i.i, align 4
  %map_locked.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %map_locked.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %map_locked.i.i, align 4
  %offset.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i.i, align 4
  %shr.i.i = lshr i32 %10, 12
  %first_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %first_page.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shr.i.i, ptr %first_page.i.i, align 4
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 4
  %add.i.i = add i32 %10, -1
  %sub.i.i = add i32 %add.i.i, %13
  %shr4.i.i = lshr i32 %sub.i.i, 12
  %last_page.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %last_page.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr4.i.i, ptr %last_page.i.i, align 4
  %sub7.i.i = sub nsw i32 1, %shr.i.i
  %add8.i.i = add nsw i32 %sub7.i.i, %shr4.i.i
  %pages.i.i = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %pages.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add8.i.i, ptr %pages.i.i, align 4
  %16 = ptrtoint ptr %memhdr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memhdr, align 4
  %list.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %call, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.snd_util_memblk, ptr %call, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %block.i.i = getelementptr inbounds %struct.snd_util_memhdr, ptr %17, i32 0, i32 1
  %cmp.not.i.i = icmp eq ptr %19, %block.i.i
  br i1 %cmp.not.i.i, label %if.end.if.end5.i.i_crit_edge, label %if.then.i.i

if.end.if.end5.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %last_page2.i.i = getelementptr i8, ptr %19, i32 12
  %20 = ptrtoint ptr %last_page2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_page2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %shr.i.i)
  %cmp3.i.i = icmp eq i32 %21, %shr.i.i
  %inc.i.i = zext i1 %cmp3.i.i to i32
  %spec.select.i.i = add nuw nsw i32 %shr.i.i, %inc.i.i
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i, %if.end.if.end5.i.i_crit_edge
  %first_page.0.i.i = phi i32 [ %shr.i.i, %if.end.if.end5.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %22 = ptrtoint ptr %list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %23, %block.i.i
  br i1 %cmp10.not.i.i, label %if.end5.i.i.get_single_page_range.exit.i_crit_edge, label %if.then11.i.i

if.end5.i.i.get_single_page_range.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_single_page_range.exit.i

if.then11.i.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %first_page15.i.i = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %first_page15.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %first_page15.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shr4.i.i)
  %cmp16.i.i = icmp eq i32 %25, %shr4.i.i
  %dec.i.i = sext i1 %cmp16.i.i to i32
  %spec.select36.i.i = add nsw i32 %shr4.i.i, %dec.i.i
  br label %get_single_page_range.exit.i

get_single_page_range.exit.i:                     ; preds = %if.then11.i.i, %if.end5.i.i.get_single_page_range.exit.i_crit_edge
  %last_page.0.i.i = phi i32 [ %shr4.i.i, %if.end5.i.i.get_single_page_range.exit.i_crit_edge ], [ %spec.select36.i.i, %if.then11.i.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %first_page.0.i.i, i32 %last_page.0.i.i)
  %cmp.not50.i = icmp sgt i32 %first_page.0.i.i, %last_page.0.i.i
  br i1 %cmp.not50.i, label %get_single_page_range.exit.i.if.end5_crit_edge, label %for.body.lr.ph.i

get_single_page_range.exit.i.if.end5_crit_edge:   ; preds = %get_single_page_range.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.lr.ph.i:                                 ; preds = %get_single_page_range.exit.i
  %iommu_workaround.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 12
  %pci.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 31
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i, i32 0, i32 2
  %dma_mask.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 11
  %page_addr_table.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 23
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i, i32 0, i32 1
  %page_ptr_table.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %page.051.i = phi i32 [ %first_page.0.i.i, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %iommu_workaround.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %iommu_workaround.i.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i.i, i32 4096, i32 8192
  %28 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %call.i.i.i = call i32 @snd_dma_alloc_dir_pages(i32 noundef 2, ptr noundef %dev.i.i, i32 noundef 0, i32 noundef %spec.select.i, ptr noundef nonnull %dmab.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp1.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp1.i, label %for.body.i.__fail.i_crit_edge, label %if.end.i

for.body.i.__fail.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__fail.i

if.end.i:                                         ; preds = %for.body.i
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 4
  %32 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_mask.i.i, align 4
  %neg.i.i = xor i32 %33, -1
  %and.i.i = and i32 %31, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i21.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i21.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i
  %call.i.i = call i32 @___ratelimit(ptr noundef nonnull @is_valid_page._rs, ptr noundef nonnull @__func__.is_valid_page) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.if.then3.i_crit_edge, label %do.end.i.i

do.body.i.i.if.then3.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %card.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 32
  %34 = ptrtoint ptr %card.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i.i, align 4
  %dev.i22.i = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 27
  %36 = ptrtoint ptr %dev.i22.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i22.i, align 8
  %38 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_mask.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.12, i32 noundef %39, i32 noundef %31) #9
  br label %if.then3.i

if.end6.i.i:                                      ; preds = %if.end.i
  %and7.i.i = and i32 %31, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end4.i, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.end6.i.i
  %call11.i.i = call i32 @___ratelimit(ptr noundef nonnull @is_valid_page._rs.13, ptr noundef nonnull @__func__.is_valid_page) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body10.i.i.if.then3.i_crit_edge, label %do.end15.i.i

do.body10.i.i.if.then3.i_crit_edge:               ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3.i

do.end15.i.i:                                     ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %card16.i.i = getelementptr inbounds %struct.snd_emu10k1, ptr %hw, i32 0, i32 32
  %40 = ptrtoint ptr %card16.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card16.i.i, align 4
  %dev17.i.i = getelementptr inbounds %struct.snd_card, ptr %41, i32 0, i32 27
  %42 = ptrtoint ptr %dev17.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev17.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.15) #9
  br label %if.then3.i

if.then3.i:                                       ; preds = %do.end15.i.i, %do.body10.i.i.if.then3.i_crit_edge, %do.end.i.i, %do.body.i.i.if.then3.i_crit_edge
  call void @snd_dma_free_pages(ptr noundef nonnull %dmab.i) #6
  br label %__fail.i

if.end4.i:                                        ; preds = %if.end6.i.i
  %44 = ptrtoint ptr %page_addr_table.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %page_addr_table.i, align 4
  %arrayidx.i = getelementptr i32, ptr %45, i32 %page.051.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %31, ptr %arrayidx.i, align 4
  %47 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %area.i, align 4
  %49 = ptrtoint ptr %page_ptr_table.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %page_ptr_table.i, align 4
  %arrayidx6.i = getelementptr ptr, ptr %50, i32 %page.051.i
  %51 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %arrayidx6.i, align 4
  %inc.i = add nuw nsw i32 %page.051.i, 1
  %exitcond.i = icmp eq i32 %page.051.i, %last_page.0.i.i
  br i1 %exitcond.i, label %if.end4.i.if.end5_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end4.i.if.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

__fail.i:                                         ; preds = %if.then3.i, %for.body.i.__fail.i_crit_edge
  %sub.i = add i32 %page.051.i, -1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dmab.i.i) #6
  %52 = getelementptr inbounds i8, ptr %dmab.i.i, i32 4
  %53 = call ptr @memset(ptr %52, i32 255, i32 28)
  %54 = ptrtoint ptr %dmab.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %dmab.i.i, align 4
  %55 = ptrtoint ptr %pci.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pci.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %dev3.i.i = getelementptr inbounds %struct.snd_dma_device, ptr %dmab.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %dev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev1.i.i, ptr %dev3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %first_page.0.i.i, i32 %sub.i)
  %cmp.not27.i.i = icmp sgt i32 %first_page.0.i.i, %sub.i
  br i1 %cmp.not27.i.i, label %__fail.i.if.then3_crit_edge, label %for.body.lr.ph.i.i

__fail.i.if.then3_crit_edge:                      ; preds = %__fail.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

for.body.lr.ph.i.i:                               ; preds = %__fail.i
  %area.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 1
  %addr.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 2
  %bytes.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %dmab.i.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %page.028.i.i = phi i32 [ %first_page.0.i.i, %for.body.lr.ph.i.i ], [ %inc.i26.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %58 = ptrtoint ptr %page_ptr_table.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %page_ptr_table.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %59, i32 %page.028.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp4.i.i = icmp eq ptr %61, null
  br i1 %cmp4.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %area.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %area.i.i, align 4
  %63 = ptrtoint ptr %page_addr_table.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %page_addr_table.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %64, i32 %page.028.i.i
  %65 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx7.i.i, align 4
  %67 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %addr.i.i, align 4
  %68 = ptrtoint ptr %iommu_workaround.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %iommu_workaround.i.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i25.i = icmp eq i8 %69, 0
  %spec.store.select.i.i = select i1 %tobool.not.i25.i, i32 4096, i32 8192
  %70 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %spec.store.select.i.i, ptr %bytes.i.i, align 4
  call void @snd_dma_free_pages(ptr noundef nonnull %dmab.i.i) #6
  %71 = ptrtoint ptr %page_addr_table.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %page_addr_table.i, align 4
  %arrayidx12.i.i = getelementptr i32, ptr %72, i32 %page.028.i.i
  %73 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx12.i.i, align 4
  %74 = ptrtoint ptr %page_ptr_table.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %page_ptr_table.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %75, i32 %page.028.i.i
  %76 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx14.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i26.i = add nuw nsw i32 %page.028.i.i, 1
  %exitcond59.i = icmp eq i32 %inc.i26.i, %page.051.i
  br i1 %exitcond59.i, label %for.inc.i.i.if.then3_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.if.then3_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %for.inc.i.i.if.then3_crit_edge, %__fail.i.if.then3_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmab.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmab.i) #6
  call void @__snd_util_mem_free(ptr noundef %1, ptr noundef nonnull %call) #6
  call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end4.i.if.end5_crit_edge, %get_single_page_range.exit.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dmab.i) #6
  %call6 = call i32 @snd_emu10k1_memblk_map(ptr noundef %hw, ptr noundef nonnull %call)
  call void @mutex_unlock(ptr noundef %block_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %if.then3 ], [ %call, %if.end5 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__snd_util_mem_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_synth_bzero(ptr nocapture noundef readonly %emu, ptr nocapture noundef readonly %blk, i32 noundef %offset, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.snd_util_memblk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %and = and i32 %1, 4095
  %add = add i32 %and, %offset
  %add2 = add i32 %add, %size
  %shr = ashr i32 %add, 12
  %first_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 1
  %max_cache_pages.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 14
  %page_ptr_table.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 22
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  br label %do.body

do.body:                                          ; preds = %if.end7.do.body_crit_edge, %entry
  %offset.addr.0 = phi i32 [ %add, %entry ], [ %shl, %if.end7.do.body_crit_edge ]
  %page.0 = phi i32 [ %shr, %entry ], [ %add3, %if.end7.do.body_crit_edge ]
  %add3 = add i32 %page.0, 1
  %shl = shl i32 %add3, 12
  %sub = sub i32 %shl, %offset.addr.0
  %sub4 = sub i32 %add2, %offset.addr.0
  %2 = tail call i32 @llvm.smin.i32(i32 %sub4, i32 %sub)
  %3 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_page, align 4
  %add5 = add i32 %4, %page.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5)
  %cmp.i = icmp slt i32 %add5, 0
  br i1 %cmp.i, label %do.body.do.end.i_crit_edge, label %lor.rhs.i

do.body.do.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.body
  %5 = ptrtoint ptr %max_cache_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cache_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add5)
  %cmp1.not.i = icmp sgt i32 %6, %add5
  br i1 %cmp1.not.i, label %if.end22.i, label %lor.rhs.i.do.end.i_crit_edge, !prof !70

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.body.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #6
  br label %if.end7

if.end22.i:                                       ; preds = %lor.rhs.i
  %7 = ptrtoint ptr %page_ptr_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_ptr_table.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %add5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool23.not.i = icmp eq ptr %10, null
  br i1 %tobool23.not.i, label %do.end27.i, label %offset_ptr.exit

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %add5) #9
  br label %if.end7

offset_ptr.exit:                                  ; preds = %if.end22.i
  %and.i = and i32 %offset.addr.0, 4095
  %add.ptr.i = getelementptr i8, ptr %10, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %offset_ptr.exit.if.end7_crit_edge, label %if.then6

offset_ptr.exit.if.end7_crit_edge:                ; preds = %offset_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %offset_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %15 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %2)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %offset_ptr.exit.if.end7_crit_edge, %do.end27.i, %do.end.i
  %cmp8 = icmp slt i32 %shl, %add2
  br i1 %cmp8, label %if.end7.do.body_crit_edge, label %do.end

if.end7.do.body_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_emu10k1_synth_copy_from_user(ptr nocapture noundef readonly %emu, ptr nocapture noundef readonly %blk, i32 noundef %offset, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %offset1 = getelementptr inbounds %struct.snd_util_memblk, ptr %blk, i32 0, i32 1
  %0 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %offset1, align 4
  %and = and i32 %1, 4095
  %add = add i32 %and, %offset
  %add2 = add i32 %add, %size
  %shr = ashr i32 %add, 12
  %first_page = getelementptr inbounds %struct.snd_emu10k1_memblk, ptr %blk, i32 0, i32 1
  %max_cache_pages.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 14
  %page_ptr_table.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 22
  %card.i = getelementptr inbounds %struct.snd_emu10k1, ptr %emu, i32 0, i32 32
  br label %do.body

do.body:                                          ; preds = %if.end9.do.body_crit_edge, %entry
  %offset.addr.0 = phi i32 [ %add, %entry ], [ %shl, %if.end9.do.body_crit_edge ]
  %data.addr.0 = phi ptr [ %data, %entry ], [ %add.ptr, %if.end9.do.body_crit_edge ]
  %page.0 = phi i32 [ %shr, %entry ], [ %add3, %if.end9.do.body_crit_edge ]
  %add3 = add i32 %page.0, 1
  %shl = shl i32 %add3, 12
  %sub = sub i32 %shl, %offset.addr.0
  %sub4 = sub i32 %add2, %offset.addr.0
  %2 = tail call i32 @llvm.smin.i32(i32 %sub4, i32 %sub)
  %3 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %first_page, align 4
  %add5 = add i32 %4, %page.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add5)
  %cmp.i = icmp slt i32 %add5, 0
  br i1 %cmp.i, label %do.body.do.end.i_crit_edge, label %lor.rhs.i

do.body.do.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

lor.rhs.i:                                        ; preds = %do.body
  %5 = ptrtoint ptr %max_cache_pages.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_cache_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %add5)
  %cmp1.not.i = icmp sgt i32 %6, %add5
  br i1 %cmp1.not.i, label %if.end22.i, label %lor.rhs.i.do.end.i_crit_edge, !prof !70

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %do.body.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 557, i32 noundef 9, ptr noundef null) #6
  br label %if.end9

if.end22.i:                                       ; preds = %lor.rhs.i
  %7 = ptrtoint ptr %page_ptr_table.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %page_ptr_table.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %8, i32 %add5
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool23.not.i = icmp eq ptr %10, null
  br i1 %tobool23.not.i, label %do.end27.i, label %offset_ptr.exit

do.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 27
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %add5) #9
  br label %if.end9

offset_ptr.exit:                                  ; preds = %if.end22.i
  %and.i = and i32 %offset.addr.0, 4095
  %add.ptr.i = getelementptr i8, ptr %10, i32 %and.i
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %offset_ptr.exit.if.end9_crit_edge, label %if.end8.i.i

offset_ptr.exit.if.end9_crit_edge:                ; preds = %offset_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.end8.i.i:                                      ; preds = %offset_ptr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp9.i.i = icmp slt i32 %2, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !70

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef nonnull %add.ptr.i, i32 noundef %2, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.21, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data.addr.0, i32 %2, i32 -1226833920) #10, !srcloc !72
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !70

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef %2) #6
  %16 = tail call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !73
  %and.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %add.ptr.i, ptr noundef %data.addr.0, i32 noundef %2) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %2, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %2, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9_crit_edge, label %if.then11.i.i, !prof !70

if.end.i.i.if.end9_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %2, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.i.if.end9_crit_edge, %offset_ptr.exit.if.end9_crit_edge, %do.end27.i, %do.end.i
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 %2
  %cmp10 = icmp slt i32 %shl, %add2
  br i1 %cmp10, label %if.end9.do.body_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.do.body_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %if.end9.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__snd_util_memblk_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_sgbuf_get_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__ksymtab_snd_emu10k1_memblk_map, !1, !"__ksymtab_snd_emu10k1_memblk_map", i1 false, i1 false}
!1 = !{!"../sound/pci/emu10k1/memory.c", i32 296, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/emu10k1/memory.c", i32 309, i32 6}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/emu10k1/memory.c", i32 338, i32 4}
!6 = !{ptr @snd_emu10k1_alloc_pages._rs, !5, !"_rs", i1 false, i1 false}
!7 = !{ptr @__func__.snd_emu10k1_alloc_pages, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @snd_emu10k1_alloc_pages._entry, !5, !"_entry", i1 false, i1 false}
!12 = !{ptr @snd_emu10k1_alloc_pages._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_snd_emu10k1_synth_alloc, !14, !"__ksymtab_snd_emu10k1_synth_alloc", i1 false, i1 false}
!14 = !{!"../sound/pci/emu10k1/memory.c", i32 428, i32 1}
!15 = !{ptr @__ksymtab_snd_emu10k1_synth_free, !16, !"__ksymtab_snd_emu10k1_synth_free", i1 false, i1 false}
!16 = !{!"../sound/pci/emu10k1/memory.c", i32 451, i32 1}
!17 = !{ptr @__ksymtab_snd_emu10k1_synth_bzero, !18, !"__ksymtab_snd_emu10k1_synth_bzero", i1 false, i1 false}
!18 = !{!"../sound/pci/emu10k1/memory.c", i32 597, i32 1}
!19 = !{ptr @__ksymtab_snd_emu10k1_synth_copy_from_user, !20, !"__ksymtab_snd_emu10k1_synth_copy_from_user", i1 false, i1 false}
!20 = !{!"../sound/pci/emu10k1/memory.c", i32 628, i32 1}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/emu10k1/memory.c", i32 143, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @map_memblk._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @map_memblk._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/pci/emu10k1/memory.c", i32 48, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @set_ptb_entry.__UNIQUE_ID_ddebug242, !27, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/emu10k1/memory.c", i32 60, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @set_silent_ptb.__UNIQUE_ID_ddebug243, !32, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!35 = !{ptr @is_valid_page._rs, !36, !"_rs", i1 false, i1 false}
!36 = !{!"../sound/pci/emu10k1/memory.c", i32 240, i32 3}
!37 = !{ptr @__func__.is_valid_page, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @is_valid_page._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @is_valid_page._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @is_valid_page._rs.13, !42, !"_rs", i1 false, i1 false}
!42 = !{!"../sound/pci/emu10k1/memory.c", i32 246, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @is_valid_page._entry.14, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @is_valid_page._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/pci/emu10k1/memory.c", i32 561, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @offset_ptr._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @offset_ptr._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2148500253, i64 2148500258, i64 2148500271, i64 2148500315, i64 2148500349, i64 2148500370}
!69 = !{!"branch_weights", i32 1, i32 2000}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i8 0, i8 2}
!72 = !{i64 2153891214, i64 2153891239}
!73 = !{i64 6386769}
!74 = !{i64 6386966}
!75 = !{i64 2153872199}
