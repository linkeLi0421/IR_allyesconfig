; ModuleID = '/llk/IR_all_yes/sound/core/compress_offload.c_pt.bc'
source_filename = "../sound/core/compress_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_compr_malloc_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_compr_malloc_pages\09\09\09\09"
module asm "\09.long\09__crc_snd_compr_malloc_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_compr_malloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_compr_malloc_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_compr_malloc_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_compr_free_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_compr_free_pages\09\09\09\09"
module asm "\09.long\09__crc_snd_compr_free_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_compr_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_compr_free_pages\22\09\09\09\09\09"
module asm "__kstrtabns_snd_compr_free_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_compr_stop_error\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_compr_stop_error\09\09\09\09"
module asm "\09.long\09__crc_snd_compr_stop_error\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_compr_stop_error:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_compr_stop_error\22\09\09\09\09\09"
module asm "__kstrtabns_snd_compr_stop_error:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_compress_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_compress_new\09\09\09\09"
module asm "\09.long\09__crc_snd_compress_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_compress_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_compress_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_compress_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_compr_stream = type { ptr, ptr, ptr, ptr, %struct.delayed_work, i32, i8, i8, i8, i8, ptr, %struct.snd_dma_buffer }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_compr_runtime = type { i32, ptr, ptr, i64, i32, i32, i64, i64, %struct.wait_queue_head, ptr, ptr, i32, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.snd_compr = type { ptr, %struct.device, ptr, ptr, ptr, i32, %struct.mutex, i32, i8, [64 x i8], ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.75, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.75 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_compr_avail = type <{ i64, %struct.snd_compr_tstamp }>
%struct.snd_compr_tstamp = type { i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.snd_compr_file = type { i32, %struct.snd_compr_stream }
%struct.snd_compr_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_compr_metadata = type { i32, [8 x i32] }
%struct.snd_compr_caps = type { i32, i32, i32, i32, i32, i32, [32 x i32], [11 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_compressed_buffer = type { i32, i32 }
%struct.snd_compr_params = type { %struct.snd_compressed_buffer, %struct.snd_codec, i8 }
%struct.snd_codec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_codec_options, [3 x i32] }
%union.snd_codec_options = type { %struct.snd_enc_generic }
%struct.snd_enc_generic = type { i32, [15 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.62, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.63, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.64, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.62 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.63 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.64 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/core/compress_offload.c\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_snd_compr_malloc_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_compr_malloc_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_compr_malloc_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_compr_malloc_pages to i32), ptr @__kstrtab_snd_compr_malloc_pages, ptr @__kstrtabns_snd_compr_malloc_pages }, section "___ksymtab+snd_compr_malloc_pages", align 4
@__kstrtab_snd_compr_free_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_compr_free_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_compr_free_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_compr_free_pages to i32), ptr @__kstrtab_snd_compr_free_pages, ptr @__kstrtabns_snd_compr_free_pages }, section "___ksymtab+snd_compr_free_pages", align 4
@snd_compr_stop_error.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_compress\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_compr_stop_error\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Changing state to: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"snd_compress: %s: %d: Changing state to: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_snd_compr_stop_error = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_compr_stop_error = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_compr_stop_error = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_compr_stop_error to i32), ptr @__kstrtab_snd_compr_stop_error, ptr @__kstrtabns_snd_compr_stop_error }, section "___ksymtab_gpl+snd_compr_stop_error", align 4
@snd_compress_new.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_compress_dev_free, ptr @snd_compress_dev_register, ptr @snd_compress_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@snd_compress_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&compr->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"comprC%iD%i\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_snd_compress_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_compress_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_compress_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_compress_new to i32), ptr @__kstrtab_snd_compress_new, ptr @__kstrtabns_snd_compress_new }, section "___ksymtab_gpl+snd_compress_new", align 4
@__UNIQUE_ID_description249 = internal constant [59 x i8] c"snd_compress.description=ALSA Compressed offload framework\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [60 x i8] c"snd_compress.author=Vinod Koul <vinod.koul@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [42 x i8] c"snd_compress.file=sound/core/snd-compress\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [28 x i8] c"snd_compress.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_compress_dev_register.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.7, ptr @.str, ptr @.str.8, i8 1, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_compress_dev_register\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg device %s, direction %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"snd_compress: %s: %d: reg device %s, direction %d\0A\00", [45 x i8] zeroinitializer }, align 32
@snd_compr_file_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @snd_compr_read, ptr @snd_compr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_compr_poll, ptr @snd_compr_ioctl, ptr null, ptr @snd_compr_mmap, i32 0, ptr @snd_compr_open, ptr null, ptr @snd_compr_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_compress_dev_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013snd_compress: %s: %d: snd_register_device failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@snd_compress_dev_register._entry_ptr = internal global ptr @snd_compress_dev_register._entry, section ".printk_index", align 4
@snd_compr_read.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 90, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_compr_read\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"avail returned %ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"snd_compress: %s: %d: avail returned %ld\0A\00", [54 x i8] zeroinitializer }, align 32
@snd_compr_calc_avail.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.15, i8 0, i8 47, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_compr_calc_avail\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"detected init and someone forgot to do a write\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"snd_compress: %s: %d: detected init and someone forgot to do a write\0A\00", [58 x i8] zeroinitializer }, align 32
@snd_compr_calc_avail.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.17, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"app wrote %lld, DSP consumed %lld\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"snd_compress: %s: %d: app wrote %lld, DSP consumed %lld\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_compr_calc_avail.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.19, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"both pointers are same, returning full avail\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"snd_compress: %s: %d: both pointers are same, returning full avail\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_compr_calc_avail.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.21, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"both pointers are same, returning no avail\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"snd_compress: %s: %d: both pointers are same, returning no avail\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_compr_calc_avail.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str, ptr @.str.23, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ret avail as %lld\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"snd_compress: %s: %d: ret avail as %lld\0A\00", [55 x i8] zeroinitializer }, align 32
@snd_compr_update_tstamp.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.25, ptr @.str, ptr @.str.26, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_compr_update_tstamp\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dsp consumed till %d total %d bytes\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"snd_compress: %s: %d: dsp consumed till %d total %d bytes\0A\00", [37 x i8] zeroinitializer }, align 32
@snd_compr_write.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str, ptr @.str.12, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_compr_write\00", [16 x i8] zeroinitializer }, align 32
@snd_compr_write.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str, ptr @.str.29, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"stream prepared, Houston we are good to go\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"snd_compress: %s: %d: stream prepared, Houston we are good to go\0A\00", [62 x i8] zeroinitializer }, align 32
@snd_compr_write_data.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.31, ptr @.str, ptr @.str.32, i8 0, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_compr_write_data\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"copying %ld at %lld\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"snd_compress: %s: %d: copying %ld at %lld\0A\00", [53 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_compr_poll.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str, ptr @.str.38, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_compr_poll\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"avail is %ld\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"snd_compress: %s: %d: avail is %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_compr_allocate_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str, i32 550, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not enough DMA buffer\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"snd_compr_allocate_buffer\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_compr_allocate_buffer._entry_ptr = internal global ptr @snd_compr_allocate_buffer._entry, section ".printk_index", align 4
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/sound/compress_driver.h\00", [32 x i8] zeroinitializer }, align 32
@snd_compr_drain.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.45, ptr @.str, ptr @.str.46, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_compr_drain\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SND_COMPR_TRIGGER_DRAIN failed %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"snd_compress: %s: %d: SND_COMPR_TRIGGER_DRAIN failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@snd_compress_wait_for_drain.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str, ptr @.str.49, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_compress_wait_for_drain\00", [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wait aborted by a signal\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"snd_compress: %s: %d: wait aborted by a signal\0A\00", [48 x i8] zeroinitializer }, align 32
@snd_compress_wait_for_drain.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str, ptr @.str.51, i8 0, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wait for drain failed with %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"snd_compress: %s: %d: wait for drain failed with %d\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_compr_partial_drain.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.53, ptr @.str, ptr @.str.54, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"snd_compr_partial_drain\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Partial drain returned failure\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"snd_compress: %s: %d: Partial drain returned failure\0A\00", [42 x i8] zeroinitializer }, align 32
@snd_major = external dso_local local_unnamed_addr global i32, align 4
@snd_compr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013snd_compress: %s: %d: no device data!!!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_compr_open\00", [17 x i8] zeroinitializer }, align 32
@snd_compr_open._entry_ptr = internal global ptr @snd_compr_open._entry, section ".printk_index", align 4
@snd_compr_open._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013snd_compress: %s: %d: this device doesn't support this direction\0A\00", [60 x i8] zeroinitializer }, align 32
@snd_compr_open._entry_ptr.60 = internal global ptr @snd_compr_open._entry.58, section ".printk_index", align 4
@snd_compr_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"(work_completion)(&(&data->stream.error_work)->work)\00", [43 x i8] zeroinitializer }, align 32
@snd_compr_open.__key.62 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&(&data->stream.error_work)->timer\00", [61 x i8] zeroinitializer }, align 32
@snd_compr_open.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&runtime->sleep\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"compr%i\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"info\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card: %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device: %d\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stream: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PLAYBACK\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CAPTURE\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"id: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@switch.table.snd_compr_read = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 -77, i32 -77, i32 -77, i32 -77, i32 -32, i32 -77, i32 -77, i32 -77, i32 -77], [60 x i8] zeroinitializer }, align 32
@switch.table.snd_compr_ioctl = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -32, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@switch.table.snd_compr_ioctl.74 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -32, i32 -1, i32 -1], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.76 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 32, i64 33, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 6]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 494, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 830, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1170, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1180, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1185, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1063, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"snd_compr_file_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1040, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1070, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 361, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 191, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 194, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 200, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 203, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 213, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 172, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 304, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 322, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 261, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 230, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 214, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 156, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 419, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 549, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant [35 x i8] c"../include/sound/compress_driver.h\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.231, i32 198, i32 6 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 891, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 862, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 864, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 952, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 98, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 103, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 114, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 127, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1105, i32 16 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1113, i32 50 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1092, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1093, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1094, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.321 = private constant [33 x i8] c"../sound/core/compress_offload.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 1097, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [28 x i8] c"switch.table.snd_compr_read\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [29 x i8] c"switch.table.snd_compr_ioctl\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [32 x i8] c"switch.table.snd_compr_ioctl.74\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_snd_compr_free_pages, ptr @__ksymtab_snd_compr_malloc_pages, ptr @__ksymtab_snd_compr_stop_error, ptr @__ksymtab_snd_compress_new, ptr @snd_compr_allocate_buffer._entry, ptr @snd_compr_allocate_buffer._entry_ptr, ptr @snd_compr_open._entry, ptr @snd_compr_open._entry.58, ptr @snd_compr_open._entry_ptr, ptr @snd_compr_open._entry_ptr.60, ptr @snd_compress_dev_register._entry, ptr @snd_compress_dev_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @snd_compress_new.ops, ptr @snd_compress_new.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_compr_file_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @snd_compr_open.__key, ptr @.str.61, ptr @snd_compr_open.__key.62, ptr @.str.63, ptr @snd_compr_open.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @switch.table.snd_compr_read, ptr @switch.table.snd_compr_ioctl, ptr @switch.table.snd_compr_ioctl.74], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compress_new.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compress_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_file_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compress_dev_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_allocate_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_open._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_open.__key.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_compr_open.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_compr_read to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_compr_ioctl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_compr_ioctl.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_compr_malloc_pages(ptr noundef readonly %stream, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !165

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 494, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #14
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %dma_buffer = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 11
  %3 = call ptr @memcpy(ptr %call7.i.i, ptr %dma_buffer, i32 16)
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i, align 8
  %dev31 = getelementptr inbounds %struct.snd_dma_device, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev31, align 4
  %call.i = tail call i32 @snd_dma_alloc_dir_pages(i32 noundef %5, ptr noundef %7, i32 noundef 0, i32 noundef %size, ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then33, label %snd_compr_set_runtime_buffer.exit

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

snd_compr_set_runtime_buffer.exit:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %dma_buffer_p2.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %dma_buffer_p2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %dma_buffer_p2.i, align 4
  %area.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %area.i, align 8
  %dma_area.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %9, i32 0, i32 10
  %13 = ptrtoint ptr %dma_area.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dma_area.i, align 8
  %addr.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_addr.i, align 4
  %bytes.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bytes.i, align 8
  %19 = getelementptr inbounds %struct.snd_compr_runtime, ptr %9, i32 0, i32 12
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %19, align 8
  %21 = load ptr, ptr %runtime, align 4
  %dma_bytes = getelementptr inbounds %struct.snd_compr_runtime, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %dma_bytes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %size, ptr %dma_bytes, align 8
  br label %cleanup

cleanup:                                          ; preds = %snd_compr_set_runtime_buffer.exit, %if.then33, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %if.then33 ], [ 1, %snd_compr_set_runtime_buffer.exit ], [ -12, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_compr_free_pages(ptr noundef readonly %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %stream, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.rhs.do.end_crit_edge, label %if.end25, !prof !165

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 516, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %dma_area = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dma_area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_area, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.end25.cleanup_crit_edge, label %if.end28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %dma_buffer_p = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_buffer_p, align 4
  %dma_buffer = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 11
  %cmp29.not = icmp eq ptr %5, %dma_buffer
  br i1 %cmp29.not, label %if.end28.if.end33_crit_edge, label %if.then30

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @snd_dma_free_pages(ptr noundef %5) #11
  %6 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_buffer_p, align 4
  tail call void @kfree(ptr noundef %7) #11
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.end28.if.end33_crit_edge
  %8 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime1, align 4
  %dma_area3.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %9, i32 0, i32 10
  %10 = call ptr @memset(ptr %dma_area3.i, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end33 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_dma_free_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_compr_stop_error(ptr noundef %stream, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %state)
  %cmp = icmp eq i32 %3, %state
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %state, ptr %1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_stop_error.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_stop_error, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !166

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_stop_error.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 830, i32 noundef %state) #11
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %5 = load ptr, ptr @system_power_efficient_wq, align 4
  %error_work = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 4
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %error_work, i32 noundef 0) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_compress_new(ptr noundef %card, i32 noundef %device, i32 noundef %dirn, ptr noundef %id, ptr noundef %compr) #0 align 64 {
entry:
  %name.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %card, ptr %card1, align 8
  %device2 = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 7
  %1 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %device, ptr %device2, align 4
  %direction = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 5
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dirn, ptr %direction, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @snd_compress_new.__key) #11
  %id1.i = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 9
  %call.i = tail call i32 @strscpy(ptr noundef %id1.i, ptr noundef %id, i32 noundef 64) #11
  %dev = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 1
  tail call void @snd_device_initialize(ptr noundef %dev, ptr noundef %card) #11
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %card, align 8
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %4, i32 noundef %device) #11
  %call4 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 5, ptr noundef %compr, ptr noundef nonnull @snd_compress_new.ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name.i) #11
  %5 = call ptr @memset(ptr %name.i, i32 255, i32 16)
  %6 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %device2, align 4
  %call.i19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name.i, ptr noundef nonnull @.str.66, i32 noundef %7) #11
  %8 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card1, align 8
  %proc_root.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %proc_root.i, align 8
  %call4.i = call ptr @snd_info_create_card_entry(ptr noundef %9, ptr noundef nonnull %name.i, ptr noundef %11) #11
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.then.snd_compress_proc_init.exit_crit_edge, label %if.end.i

if.then.snd_compress_proc_init.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compress_proc_init.exit

if.end.i:                                         ; preds = %if.then
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call4.i, i32 0, i32 1
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16749, ptr %mode.i, align 4
  %proc_root5.i = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 10
  %13 = ptrtoint ptr %proc_root5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4.i, ptr %proc_root5.i, align 4
  %14 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card1, align 8
  %call8.i = call ptr @snd_info_create_card_entry(ptr noundef %15, ptr noundef nonnull @.str.67, ptr noundef nonnull %call4.i) #11
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then10.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %private_data2.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call8.i, i32 0, i32 7
  %16 = ptrtoint ptr %private_data2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %compr, ptr %private_data2.i.i, align 4
  %c.i.i = getelementptr inbounds %struct.snd_info_entry, ptr %call8.i, i32 0, i32 4
  %17 = ptrtoint ptr %c.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @snd_compress_proc_info_read, ptr %c.i.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end.i.if.end11.i_crit_edge
  %proc_info_entry.i = getelementptr inbounds %struct.snd_compr, ptr %compr, i32 0, i32 11
  %18 = ptrtoint ptr %proc_info_entry.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i, ptr %proc_info_entry.i, align 8
  br label %snd_compress_proc_init.exit

snd_compress_proc_init.exit:                      ; preds = %if.end11.i, %if.then.snd_compress_proc_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name.i) #11
  br label %if.end

if.end:                                           ; preds = %snd_compress_proc_init.exit, %entry.if.end_crit_edge
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compress_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %proc_info_entry.i = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %proc_info_entry.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_info_entry.i, align 8
  tail call void @snd_info_free_entry(ptr noundef %3) #11
  %4 = ptrtoint ptr %proc_info_entry.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %proc_info_entry.i, align 8
  %proc_root.i = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %proc_root.i, align 4
  tail call void @snd_info_free_entry(ptr noundef %6) #11
  %7 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %proc_root.i, align 4
  %dev = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 1
  tail call void @put_device(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compress_dev_register(ptr noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %device, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !165

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1059, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compress_dev_register.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compress_dev_register, %if.then35)) #11
          to label %do.end38 [label %if.then35], !srcloc !166

if.then35:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %direction = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %direction, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compress_dev_register.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef 1064, ptr noundef %3, i32 noundef %5) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then35, %if.end24
  %card = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 8
  %device39 = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %device39, align 4
  %dev = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 1
  %call40 = tail call i32 @snd_register_device(i32 noundef 7, ptr noundef %7, i32 noundef %9, ptr noundef nonnull @snd_compr_file_ops, ptr noundef nonnull %1, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp = icmp slt i32 %call40, 0
  br i1 %cmp, label %do.end44, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end44:                                         ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef 1070, i32 noundef %call40) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.end38.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -77, %do.end ], [ %call40, %do.end44 ], [ %call40, %do.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compress_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %dev = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 1
  %call = tail call i32 @snd_unregister_device(ptr noundef %dev) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_dma_alloc_dir_pages(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_read(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %avail.i = alloca %struct.snd_compr_avail, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !165

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 338, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %stream25 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1
  %device = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %runtime = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %8 = icmp ult i32 %7, 9
  br i1 %8, label %switch.hole_check, label %if.end24.sw.epilog_crit_edge

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.hole_check.sw.epilog_crit_edge, %if.end24.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %avail.i) #11
  %9 = call ptr @memset(ptr %avail.i, i32 255, i32 28)
  %call.i = call fastcc i32 @snd_compr_calc_avail(ptr noundef %stream25, ptr noundef nonnull %avail.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %avail.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_read.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_read, %if.then37)) #11
          to label %do.end40 [label %if.then37], !srcloc !166

if.then37:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_read.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef 361, i32 noundef %call.i) #11
  br label %do.end40

do.end40:                                         ; preds = %if.then37, %sw.epilog
  %ops = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %copy = getelementptr inbounds %struct.snd_compr_ops, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %copy, align 4
  %tobool43.not = icmp eq ptr %13, null
  br i1 %tobool43.not, label %do.end40.out_crit_edge, label %if.then44

do.end40.out_crit_edge:                           ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then44:                                        ; preds = %do.end40
  %14 = call i32 @llvm.umin.i32(i32 %call.i, i32 %count)
  %call47 = call i32 %13(ptr noundef %stream25, ptr noundef %buf, i32 noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp49 = icmp sgt i32 %call47, 0
  br i1 %cmp49, label %if.then50, label %if.then44.out_crit_edge

if.then44.out_crit_edge:                          ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then50:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %conv73 = zext i32 %call47 to i64
  %15 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime, align 4
  %total_bytes_transferred = getelementptr inbounds %struct.snd_compr_runtime, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %total_bytes_transferred to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %total_bytes_transferred, align 8
  %add = add i64 %18, %conv73
  store i64 %add, ptr %total_bytes_transferred, align 8
  br label %out

switch.hole_check:                                ; preds = %if.end24
  %switch.maskindex = trunc i32 %7 to i16
  %switch.shifted = lshr i16 405, %switch.maskindex
  %19 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %switch.lobit.not = icmp eq i16 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.snd_compr_read, i32 0, i32 %7
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %out

out:                                              ; preds = %switch.lookup, %if.then50, %if.then44.out_crit_edge, %do.end40.out_crit_edge
  %retval1.0 = phi i32 [ %call47, %if.then50 ], [ %call47, %if.then44.out_crit_edge ], [ -6, %do.end40.out_crit_edge ], [ %switch.load, %switch.lookup ]
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %lock54 = getelementptr inbounds %struct.snd_compr, ptr %22, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock54) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %retval1.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_write(ptr nocapture noundef readonly %f, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %avail.i = alloca %struct.snd_compr_avail, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !165

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 287, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %stream25 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1
  %device = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %runtime = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %.off = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %lock27 = getelementptr inbounds %struct.snd_compr, ptr %9, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %lock27) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %avail.i) #11
  %10 = call ptr @memset(ptr %avail.i, i32 255, i32 28)
  %call.i = call fastcc i32 @snd_compr_calc_avail(ptr noundef %stream25, ptr noundef nonnull %avail.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %avail.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_write.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_write, %if.then38)) #11
          to label %do.end41 [label %if.then38], !srcloc !166

if.then38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_write.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i32 noundef 304, i32 noundef %call.i) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %sw.epilog
  %11 = call i32 @llvm.umin.i32(i32 %call.i, i32 %count)
  %ops = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %copy = getelementptr inbounds %struct.snd_compr_ops, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy, align 4
  %tobool44.not = icmp eq ptr %15, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = call i32 %15(ptr noundef %stream25, ptr noundef %buf, i32 noundef %11) #11
  br label %if.end50

if.else:                                          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call49 = call fastcc i32 @snd_compr_write_data(ptr noundef %stream25, ptr noundef %buf, i32 noundef %11)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then45
  %retval1.0 = phi i32 [ %call48, %if.then45 ], [ %call49, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp51 = icmp sgt i32 %retval1.0, 0
  br i1 %cmp51, label %if.then52, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %conv109 = zext i32 %retval1.0 to i64
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %total_bytes_available = getelementptr inbounds %struct.snd_compr_runtime, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %total_bytes_available to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_bytes_available, align 8
  %add = add i64 %19, %conv109
  store i64 %add, ptr %total_bytes_available, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  %20 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %runtime, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp57 = icmp eq i32 %23, 1
  br i1 %cmp57, label %if.then59, label %if.end54.if.end78_crit_edge

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %21, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_write.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_write, %if.then74)) #11
          to label %if.end78 [label %if.then74], !srcloc !166

if.then74:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_write.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef 322) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.then59, %if.end54.if.end78_crit_edge
  %25 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device, align 4
  %lock80 = getelementptr inbounds %struct.snd_compr, ptr %26, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock80) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %sw.default, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -77, %sw.default ], [ %retval1.0, %if.end78 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_poll(ptr noundef %f, ptr noundef %wait) #0 align 64 {
entry:
  %avail.i = alloca %struct.snd_compr_avail, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !165

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 400, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %stream25 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1
  %device = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %runtime = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %runtime, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %sw.epilog [
    i32 0, label %if.end24.sw.bb_crit_edge
    i32 4, label %if.end24.sw.bb_crit_edge87
  ]

if.end24.sw.bb_crit_edge87:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge87
  %direction.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %or = select i1 %cmp.i, i32 268, i32 73
  br label %out

sw.epilog:                                        ; preds = %if.end24
  %sleep = getelementptr inbounds %struct.snd_compr_runtime, ptr %5, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %sw.epilog.poll_wait.exit_crit_edge, label %land.lhs.true.i

sw.epilog.poll_wait.exit_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %11 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  %tobool3.not.i = icmp eq ptr %sleep, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %12(ptr noundef %f, ptr noundef nonnull %sleep, ptr noundef nonnull %wait) #11
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %sw.epilog.poll_wait.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %avail.i) #11
  %13 = call ptr @memset(ptr %avail.i, i32 255, i32 28)
  %call.i = call fastcc i32 @snd_compr_calc_avail(ptr noundef %stream25, ptr noundef nonnull %avail.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %avail.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_poll.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_poll, %if.then38)) #11
          to label %do.end41 [label %if.then38], !srcloc !166

if.then38:                                        ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_poll.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef 419, i32 noundef %call.i) #11
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %poll_wait.exit
  %14 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %runtime, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %17, label %sw.default53 [
    i32 5, label %sw.bb44
    i32 3, label %do.end41.sw.bb48_crit_edge
    i32 2, label %do.end41.sw.bb48_crit_edge88
    i32 6, label %do.end41.sw.bb48_crit_edge89
  ]

do.end41.sw.bb48_crit_edge89:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

do.end41.sw.bb48_crit_edge88:                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

do.end41.sw.bb48_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb48

sw.bb44:                                          ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %direction.i77 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %19 = ptrtoint ptr %direction.i77 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %direction.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i78 = icmp eq i32 %20, 0
  %..i79 = select i1 %cmp.i78, i32 260, i32 65
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %15, align 8
  br label %out

sw.bb48:                                          ; preds = %do.end41.sw.bb48_crit_edge, %do.end41.sw.bb48_crit_edge88, %do.end41.sw.bb48_crit_edge89
  %fragment_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %fragment_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fragment_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %23)
  %cmp.not = icmp ult i32 %call.i, %23
  br i1 %cmp.not, label %sw.bb48.out_crit_edge, label %if.then50

sw.bb48.out_crit_edge:                            ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then50:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  %direction.i80 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %24 = ptrtoint ptr %direction.i80 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %direction.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i81 = icmp eq i32 %25, 0
  %..i82 = select i1 %cmp.i81, i32 260, i32 65
  br label %out

sw.default53:                                     ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #13
  %direction.i83 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %26 = ptrtoint ptr %direction.i83 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %direction.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i84 = icmp eq i32 %27, 0
  %or55 = select i1 %cmp.i84, i32 268, i32 73
  br label %out

out:                                              ; preds = %sw.default53, %if.then50, %sw.bb48.out_crit_edge, %sw.bb44, %sw.bb
  %retval1.0 = phi i32 [ %or55, %sw.default53 ], [ %..i82, %if.then50 ], [ 0, %sw.bb48.out_crit_edge ], [ %..i79, %sw.bb44 ], [ %or, %sw.bb ]
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %lock58 = getelementptr inbounds %struct.snd_compr, ptr %29, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock58) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ 8, %do.end ], [ %retval1.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_ioctl(ptr nocapture noundef readonly %f, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ioctl_avail.i = alloca %struct.snd_compr_avail, align 8
  %metadata.i146 = alloca %struct.snd_compr_metadata, align 4
  %metadata.i = alloca %struct.snd_compr_metadata, align 4
  %caps.i = alloca %struct.snd_compr_caps, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !165

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 967, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end24:                                         ; preds = %entry
  %stream25 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1
  %device = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %3, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %trunc = trunc i32 %cmd to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %trunc, label %if.end24.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 16, label %sw.bb32
    i8 17, label %sw.bb34
    i8 18, label %sw.bb36
    i8 19, label %sw.bb38
    i8 20, label %sw.bb40
    i8 21, label %sw.bb42
    i8 32, label %sw.bb44
    i8 33, label %sw.bb46
    i8 48, label %sw.bb48
    i8 49, label %sw.bb50
    i8 50, label %sw.bb52
    i8 51, label %sw.bb54
    i8 52, label %sw.bb56
    i8 54, label %sw.bb58
    i8 53, label %sw.bb60
  ]

if.end24.sw.epilog_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %5 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 976) #11
  %6 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !167
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 512, i32 -1226833921) #11, !srcloc !170
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool31.not = icmp eq i32 %9, 0
  %cond = select i1 %tobool31.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %caps.i) #11
  %ops.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %get_caps.i = getelementptr inbounds %struct.snd_compr_ops, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %get_caps.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_caps.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %sw.bb32.snd_compr_get_caps.exit_crit_edge, label %if.end.i

sw.bb32.snd_compr_get_caps.exit_crit_edge:        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_caps.exit

if.end.i:                                         ; preds = %sw.bb32
  %14 = call ptr @memset(ptr %caps.i, i32 0, i32 196)
  %15 = ptrtoint ptr %get_caps.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_caps.i, align 4
  %call.i = call i32 %16(ptr noundef %stream25, ptr noundef nonnull %caps.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.snd_compr_get_caps.exit_crit_edge

if.end.i.snd_compr_get_caps.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_caps.exit

if.end6.i:                                        ; preds = %if.end.i
  %17 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end6.i.snd_compr_get_caps.exit_crit_edge, label %if.end.i.i.i

if.end6.i.snd_compr_get_caps.exit_crit_edge:      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_caps.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 196, i32 -1226833920) #16, !srcloc !171
  %asmresult.i.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.snd_compr_get_caps.exit_crit_edge

if.end.i.i.i.snd_compr_get_caps.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_caps.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %caps.i, i32 noundef 196) #11
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %caps.i, i32 noundef 196) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool8.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 -14
  br label %snd_compr_get_caps.exit

snd_compr_get_caps.exit:                          ; preds = %copy_to_user.exit.i, %if.end.i.i.i.snd_compr_get_caps.exit_crit_edge, %if.end6.i.snd_compr_get_caps.exit_crit_edge, %if.end.i.snd_compr_get_caps.exit_crit_edge, %sw.bb32.snd_compr_get_caps.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %sw.bb32.snd_compr_get_caps.exit_crit_edge ], [ %call.i, %if.end.i.snd_compr_get_caps.exit_crit_edge ], [ -14, %if.end6.i.snd_compr_get_caps.exit_crit_edge ], [ -14, %if.end.i.i.i.snd_compr_get_caps.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %caps.i) #11
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end24
  %ops.i92 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %ops.i92 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i92, align 4
  %get_codec_caps.i = getelementptr inbounds %struct.snd_compr_ops, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %get_codec_caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_codec_caps.i, align 4
  %tobool.not.i93 = icmp eq ptr %22, null
  br i1 %tobool.not.i93, label %sw.bb34.sw.epilog_crit_edge, label %if.end.i94

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i94:                                       ; preds = %sw.bb34
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 11144, i32 noundef 3520, i32 noundef 2) #17
  %tobool2.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i94.sw.epilog_crit_edge, label %if.end4.i

if.end.i94.sw.epilog_crit_edge:                   ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.i:                                        ; preds = %if.end.i94
  %23 = ptrtoint ptr %ops.i92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i92, align 4
  %get_codec_caps6.i = getelementptr inbounds %struct.snd_compr_ops, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %get_codec_caps6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_codec_caps6.i, align 4
  %call7.i = tail call i32 %26(ptr noundef %stream25, ptr noundef nonnull %call1.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i95 = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i95, label %if.end10.i, label %if.end4.i.out.i_crit_edge

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end10.i:                                       ; preds = %if.end4.i
  %27 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i.i96 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i96, label %if.end10.i.out.i_crit_edge, label %if.end.i.i.i99

if.end10.i.out.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i.i.i99:                                   ; preds = %if.end10.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %27, i32 11144, i32 -1226833920) #16, !srcloc !171
  %asmresult.i.i.i97 = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i97)
  %cmp.i6.i.i98 = icmp eq i32 %asmresult.i.i.i97, 0
  br i1 %cmp.i6.i.i98, label %copy_to_user.exit.i103, label %if.end.i.i.i99.out.i_crit_edge

if.end.i.i.i99.out.i_crit_edge:                   ; preds = %if.end.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

copy_to_user.exit.i103:                           ; preds = %if.end.i.i.i99
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i100 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call1.i.i.i.i, i32 noundef 11144) #11
  %call.i12.i.i.i101 = tail call i32 @arm_copy_to_user(ptr noundef %27, ptr noundef nonnull %call1.i.i.i.i, i32 noundef 11144) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i101)
  %tobool12.not.i = icmp eq i32 %call.i12.i.i.i101, 0
  %spec.select.i102 = select i1 %tobool12.not.i, i32 0, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i103, %if.end.i.i.i99.out.i_crit_edge, %if.end10.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %retval1.0.i = phi i32 [ %call7.i, %if.end4.i.out.i_crit_edge ], [ -14, %if.end10.i.out.i_crit_edge ], [ -14, %if.end.i.i.i99.out.i_crit_edge ], [ %spec.select.i102, %copy_to_user.exit.i103 ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i) #11
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end24
  %runtime.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %runtime.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb36.sw.epilog_crit_edge

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb36
  %33 = inttoptr i32 %arg to ptr
  %call.i105 = tail call ptr @memdup_user(ptr noundef %33, i32 noundef 132) #11
  %cmp.i.i = icmp ugt ptr %call.i105, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then3.i, label %if.end.i106

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %call.i105 to i32
  br label %sw.epilog

if.end.i106:                                      ; preds = %if.then.i
  %35 = ptrtoint ptr %call.i105 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i34.i = icmp eq i32 %36, 0
  br i1 %cmp.i34.i, label %if.end.i106.out.i110_crit_edge, label %lor.lhs.false.i.i

if.end.i106.out.i110_crit_edge:                   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

lor.lhs.false.i.i:                                ; preds = %if.end.i106
  %fragments.i.i = getelementptr inbounds %struct.snd_compressed_buffer, ptr %call.i105, i32 0, i32 1
  %37 = ptrtoint ptr %fragments.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %fragments.i.i, align 4
  %mul.i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 %38) #11
  %mul.ov.i.i = extractvalue { i32, i1 } %mul.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8.i.i = icmp eq i32 %38, 0
  %or.cond.i.i = or i1 %cmp8.i.i, %mul.ov.i.i
  br i1 %or.cond.i.i, label %lor.lhs.false.i.i.out.i110_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.out.i110_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %codec.i.i = getelementptr inbounds %struct.snd_compr_params, ptr %call.i105, i32 0, i32 1
  %39 = ptrtoint ptr %codec.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %codec.i.i, align 4
  %41 = add i32 %40, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %41)
  %42 = icmp ult i32 %41, -16
  br i1 %42, label %if.end.i.i.out.i110_crit_edge, label %if.end15.i.i

if.end.i.i.out.i110_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

if.end15.i.i:                                     ; preds = %if.end.i.i
  %ch_in.i.i = getelementptr inbounds %struct.snd_compr_params, ptr %call.i105, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %ch_in.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ch_in.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.i.i = icmp eq i32 %44, 0
  br i1 %cmp17.i.i, label %if.end15.i.i.out.i110_crit_edge, label %lor.lhs.false18.i.i

if.end15.i.i.out.i110_crit_edge:                  ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

lor.lhs.false18.i.i:                              ; preds = %if.end15.i.i
  %ch_out.i.i = getelementptr inbounds %struct.snd_compr_params, ptr %call.i105, i32 0, i32 1, i32 2
  %45 = ptrtoint ptr %ch_out.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ch_out.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp20.i.i = icmp eq i32 %46, 0
  br i1 %cmp20.i.i, label %lor.lhs.false18.i.i.out.i110_crit_edge, label %if.end7.i

lor.lhs.false18.i.i.out.i110_crit_edge:           ; preds = %lor.lhs.false18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

if.end7.i:                                        ; preds = %lor.lhs.false18.i.i
  %mul.i36.i = mul i32 %38, %36
  %ops.i.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 4
  %copy.i.i = getelementptr inbounds %struct.snd_compr_ops, ptr %48, i32 0, i32 8
  %49 = ptrtoint ptr %copy.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %copy.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end7.i.if.end11.i_crit_edge

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.else.i.i:                                      ; preds = %if.end7.i
  %51 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %runtime.i, align 4
  %dma_buffer_p.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %dma_buffer_p.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_buffer_p.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %54, null
  br i1 %tobool3.not.i.i, label %if.end8.i.i.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  %bytes.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bytes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i36.i, i32 %56)
  %cmp.i37.i = icmp ugt i32 %mul.i36.i, %56
  br i1 %cmp.i37.i, label %if.end12.thread.i.i, label %if.else8.i.i

if.end12.thread.i.i:                              ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_compr, ptr %58, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.40) #15
  br label %out.i110

if.else8.i.i:                                     ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %area.i.i = getelementptr inbounds %struct.snd_dma_buffer, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %area.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %area.i.i, align 4
  br label %if.end12.i.i

if.end8.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i36.i, i32 noundef 3264) #17
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i.i, %if.else8.i.i
  %buffer.0.i.i = phi ptr [ %60, %if.else8.i.i ], [ %call9.i.i.i, %if.end8.i.i.i ]
  %tobool13.not.i.i = icmp eq ptr %buffer.0.i.i, null
  br i1 %tobool13.not.i.i, label %if.end12.i.i.out.i110_crit_edge, label %if.end12.i.i.if.end11.i_crit_edge

if.end12.i.i.if.end11.i_crit_edge:                ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i

if.end12.i.i.out.i110_crit_edge:                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

if.end11.i:                                       ; preds = %if.end12.i.i.if.end11.i_crit_edge, %if.end7.i.if.end11.i_crit_edge
  %buffer.1.i.i = phi ptr [ %buffer.0.i.i, %if.end12.i.i.if.end11.i_crit_edge ], [ null, %if.end7.i.if.end11.i_crit_edge ]
  %61 = ptrtoint ptr %call.i105 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i105, align 4
  %63 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %runtime.i, align 4
  %fragment_size20.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %fragment_size20.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %62, ptr %fragment_size20.i.i, align 8
  %66 = ptrtoint ptr %fragments.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fragments.i.i, align 4
  %68 = load ptr, ptr %runtime.i, align 4
  %fragments24.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %fragments24.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %67, ptr %fragments24.i.i, align 4
  %70 = load ptr, ptr %runtime.i, align 4
  %buffer26.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %buffer26.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %buffer.1.i.i, ptr %buffer26.i.i, align 8
  %conv.i.i = zext i32 %mul.i36.i to i64
  %72 = load ptr, ptr %runtime.i, align 4
  %buffer_size28.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %buffer_size28.i.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv.i.i, ptr %buffer_size28.i.i, align 8
  %74 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ops.i.i, align 4
  %set_params.i = getelementptr inbounds %struct.snd_compr_ops, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %set_params.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %set_params.i, align 4
  %call12.i = tail call i32 %77(ptr noundef %stream25, ptr noundef %call.i105) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end11.i.out.i110_crit_edge

if.end11.i.out.i110_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i110

if.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %metadata_set.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 6
  %78 = ptrtoint ptr %metadata_set.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %metadata_set.i, align 4
  %next_track.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 7
  %79 = ptrtoint ptr %next_track.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %next_track.i, align 1
  %80 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %runtime.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %81, align 8
  br label %out.i110

out.i110:                                         ; preds = %if.end15.i, %if.end11.i.out.i110_crit_edge, %if.end12.i.i.out.i110_crit_edge, %if.end12.thread.i.i, %lor.lhs.false18.i.i.out.i110_crit_edge, %if.end15.i.i.out.i110_crit_edge, %if.end.i.i.out.i110_crit_edge, %lor.lhs.false.i.i.out.i110_crit_edge, %if.end.i106.out.i110_crit_edge
  %retval1.0.i109 = phi i32 [ %call12.i, %if.end11.i.out.i110_crit_edge ], [ 0, %if.end15.i ], [ -22, %lor.lhs.false.i.i.out.i110_crit_edge ], [ -22, %if.end.i106.out.i110_crit_edge ], [ -22, %if.end.i.i.out.i110_crit_edge ], [ -22, %if.end15.i.i.out.i110_crit_edge ], [ -22, %lor.lhs.false18.i.i.out.i110_crit_edge ], [ -12, %if.end12.i.i.out.i110_crit_edge ], [ -12, %if.end12.thread.i.i ]
  tail call void @kfree(ptr noundef %call.i105) #11
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end24
  %ops.i112 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %ops.i112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i112, align 4
  %get_params.i = getelementptr inbounds %struct.snd_compr_ops, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %get_params.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %get_params.i, align 4
  %tobool.not.i113 = icmp eq ptr %86, null
  br i1 %tobool.not.i113, label %sw.bb38.sw.epilog_crit_edge, label %if.end.i116

sw.bb38.sw.epilog_crit_edge:                      ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i116:                                      ; preds = %sw.bb38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 120) #14
  %tobool2.not.i115 = icmp eq ptr %call7.i.i.i114, null
  br i1 %tobool2.not.i115, label %if.end.i116.sw.epilog_crit_edge, label %if.end4.i119

if.end.i116.sw.epilog_crit_edge:                  ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.i119:                                     ; preds = %if.end.i116
  %88 = ptrtoint ptr %ops.i112 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ops.i112, align 4
  %get_params6.i = getelementptr inbounds %struct.snd_compr_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %get_params6.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %get_params6.i, align 4
  %call7.i117 = tail call i32 %91(ptr noundef %stream25, ptr noundef nonnull %call7.i.i.i114) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i117)
  %tobool8.not.i118 = icmp eq i32 %call7.i117, 0
  br i1 %tobool8.not.i118, label %if.end10.i121, label %if.end4.i119.out.i131_crit_edge

if.end4.i119.out.i131_crit_edge:                  ; preds = %if.end4.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i131

if.end10.i121:                                    ; preds = %if.end4.i119
  %92 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i.i120 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i120, label %if.end10.i121.out.i131_crit_edge, label %if.end.i.i.i124

if.end10.i121.out.i131_crit_edge:                 ; preds = %if.end10.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i131

if.end.i.i.i124:                                  ; preds = %if.end10.i121
  %93 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %92, i32 120, i32 -1226833920) #16, !srcloc !171
  %asmresult.i.i.i122 = extractvalue { i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i122)
  %cmp.i6.i.i123 = icmp eq i32 %asmresult.i.i.i122, 0
  br i1 %cmp.i6.i.i123, label %copy_to_user.exit.i129, label %if.end.i.i.i124.out.i131_crit_edge

if.end.i.i.i124.out.i131_crit_edge:               ; preds = %if.end.i.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i131

copy_to_user.exit.i129:                           ; preds = %if.end.i.i.i124
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i125 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i.i114, i32 noundef 120) #11
  %call.i12.i.i.i126 = tail call i32 @arm_copy_to_user(ptr noundef %92, ptr noundef nonnull %call7.i.i.i114, i32 noundef 120) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i126)
  %tobool12.not.i127 = icmp eq i32 %call.i12.i.i.i126, 0
  %spec.select.i128 = select i1 %tobool12.not.i127, i32 0, i32 -14
  br label %out.i131

out.i131:                                         ; preds = %copy_to_user.exit.i129, %if.end.i.i.i124.out.i131_crit_edge, %if.end10.i121.out.i131_crit_edge, %if.end4.i119.out.i131_crit_edge
  %retval1.0.i130 = phi i32 [ %call7.i117, %if.end4.i119.out.i131_crit_edge ], [ -14, %if.end10.i121.out.i131_crit_edge ], [ -14, %if.end.i.i.i124.out.i131_crit_edge ], [ %spec.select.i128, %copy_to_user.exit.i129 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i114) #11
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %metadata.i) #11
  %94 = call ptr @memset(ptr %metadata.i, i32 255, i32 36)
  %ops.i133 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %ops.i133 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %ops.i133, align 4
  %set_metadata.i = getelementptr inbounds %struct.snd_compr_ops, ptr %96, i32 0, i32 4
  %97 = ptrtoint ptr %set_metadata.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %set_metadata.i, align 4
  %tobool.not.i134 = icmp eq ptr %98, null
  br i1 %tobool.not.i134, label %sw.bb40.snd_compr_set_metadata.exit_crit_edge, label %if.end.i136

sw.bb40.snd_compr_set_metadata.exit_crit_edge:    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_set_metadata.exit

if.end.i136:                                      ; preds = %sw.bb40
  %99 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #11
  %call.i.i.i135 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i135, label %if.end.i136.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i136.if.then11.i.i.i_crit_edge:            ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i136
  %100 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %99, i32 36, i32 -1226833920) #16, !srcloc !172
  %asmresult.i.i.i137 = extractvalue { i32, i32 } %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i137)
  %cmp.i6.i.i138 = icmp eq i32 %asmresult.i.i.i137, 0
  br i1 %cmp.i6.i.i138, label %if.end.i.i.i141, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !173

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i141:                                  ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i139 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %metadata.i, i32 noundef 36) #11
  %101 = call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 4
  %103 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !167
  %and.i.i.i.i.i = and i32 %103, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %call1.i.i.i.i140 = call i32 @arm_copy_from_user(ptr noundef nonnull %metadata.i, ptr noundef %99, i32 noundef 36) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %103) #11, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i140)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i140, 0
  br i1 %tobool4.not.i.i.i, label %if.end4.i144, label %if.end.i.i.i141.if.then11.i.i.i_crit_edge, !prof !173

if.end.i.i.i141.if.then11.i.i.i_crit_edge:        ; preds = %if.end.i.i.i141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i141.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.i136.if.then11.i.i.i_crit_edge
  %res.0.i.i14.i = phi i32 [ %call1.i.i.i.i140, %if.end.i.i.i141.if.then11.i.i.i_crit_edge ], [ 36, %if.end.i136.if.then11.i.i.i_crit_edge ], [ 36, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 36, %res.0.i.i14.i
  %add.ptr.i.i.i = getelementptr i8, ptr %metadata.i, i32 %sub.i.i.i
  %104 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i14.i)
  br label %snd_compr_set_metadata.exit

if.end4.i144:                                     ; preds = %if.end.i.i.i141
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %ops.i133 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ops.i133, align 4
  %set_metadata6.i = getelementptr inbounds %struct.snd_compr_ops, ptr %106, i32 0, i32 4
  %107 = ptrtoint ptr %set_metadata6.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %set_metadata6.i, align 4
  %call7.i142 = call i32 %108(ptr noundef %stream25, ptr noundef nonnull %metadata.i) #11
  %metadata_set.i143 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 6
  %109 = ptrtoint ptr %metadata_set.i143 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %metadata_set.i143, align 4
  br label %snd_compr_set_metadata.exit

snd_compr_set_metadata.exit:                      ; preds = %if.end4.i144, %if.then11.i.i.i, %sw.bb40.snd_compr_set_metadata.exit_crit_edge
  %retval.0.i145 = phi i32 [ %call7.i142, %if.end4.i144 ], [ -6, %sw.bb40.snd_compr_set_metadata.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %metadata.i) #11
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %metadata.i146) #11
  %110 = call ptr @memset(ptr %metadata.i146, i32 255, i32 36)
  %ops.i147 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ops.i147, align 4
  %get_metadata.i = getelementptr inbounds %struct.snd_compr_ops, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %get_metadata.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %get_metadata.i, align 4
  %tobool.not.i148 = icmp eq ptr %114, null
  br i1 %tobool.not.i148, label %sw.bb42.snd_compr_get_metadata.exit_crit_edge, label %if.end.i150

sw.bb42.snd_compr_get_metadata.exit_crit_edge:    ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_metadata.exit

if.end.i150:                                      ; preds = %sw.bb42
  %115 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #11
  %call.i.i.i149 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i149, label %if.end.i150.if.then11.i.i.i164_crit_edge, label %land.lhs.true.i.i.i153

if.end.i150.if.then11.i.i.i164_crit_edge:         ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i164

land.lhs.true.i.i.i153:                           ; preds = %if.end.i150
  %116 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %115, i32 36, i32 -1226833920) #16
  %asmresult.i.i.i151 = extractvalue { i32, i32 } %116, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i151)
  %cmp.i6.i.i152 = icmp eq i32 %asmresult.i.i.i151, 0
  br i1 %cmp.i6.i.i152, label %if.end.i.i.i161, label %land.lhs.true.i.i.i153.if.then11.i.i.i164_crit_edge, !prof !173

land.lhs.true.i.i.i153.if.then11.i.i.i164_crit_edge: ; preds = %land.lhs.true.i.i.i153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i164

if.end.i.i.i161:                                  ; preds = %land.lhs.true.i.i.i153
  %call.i.i.i.i154 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %metadata.i146, i32 noundef 36) #11
  %117 = call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i.i155 = and i32 %117, -16384
  %118 = inttoptr i32 %and.i.i.i.i.i.i.i155 to ptr
  %cpu_domain.i.i.i.i.i.i156 = getelementptr inbounds %struct.thread_info, ptr %118, i32 0, i32 4
  %119 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i156) #7, !srcloc !167
  %and.i.i.i.i.i157 = and i32 %119, -13
  %or.i.i.i.i.i158 = or i32 %and.i.i.i.i.i157, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i158) #11, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %call1.i.i.i.i159 = call i32 @arm_copy_from_user(ptr noundef nonnull %metadata.i146, ptr noundef %115, i32 noundef 36) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %119) #11, !srcloc !168
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i159)
  %tobool4.not.i.i.i160 = icmp eq i32 %call1.i.i.i.i159, 0
  br i1 %tobool4.not.i.i.i160, label %if.end4.i166, label %if.end.i.i.i161.if.then11.i.i.i164_crit_edge, !prof !173

if.end.i.i.i161.if.then11.i.i.i164_crit_edge:     ; preds = %if.end.i.i.i161
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i164

if.then11.i.i.i164:                               ; preds = %if.end.i.i.i161.if.then11.i.i.i164_crit_edge, %land.lhs.true.i.i.i153.if.then11.i.i.i164_crit_edge, %if.end.i150.if.then11.i.i.i164_crit_edge
  %res.0.i.i31.i = phi i32 [ %call1.i.i.i.i159, %if.end.i.i.i161.if.then11.i.i.i164_crit_edge ], [ 36, %if.end.i150.if.then11.i.i.i164_crit_edge ], [ 36, %land.lhs.true.i.i.i153.if.then11.i.i.i164_crit_edge ]
  %sub.i.i.i162 = sub i32 36, %res.0.i.i31.i
  %add.ptr.i.i.i163 = getelementptr i8, ptr %metadata.i146, i32 %sub.i.i.i162
  %120 = call ptr @memset(ptr %add.ptr.i.i.i163, i32 0, i32 %res.0.i.i31.i)
  br label %snd_compr_get_metadata.exit

if.end4.i166:                                     ; preds = %if.end.i.i.i161
  %121 = ptrtoint ptr %ops.i147 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops.i147, align 4
  %get_metadata6.i = getelementptr inbounds %struct.snd_compr_ops, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %get_metadata6.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %get_metadata6.i, align 4
  %call7.i165 = call i32 %124(ptr noundef %stream25, ptr noundef nonnull %metadata.i146) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i165)
  %cmp.not.i = icmp eq i32 %call7.i165, 0
  br i1 %cmp.not.i, label %if.end8.i.i22.i, label %if.end4.i166.snd_compr_get_metadata.exit_crit_edge

if.end4.i166.snd_compr_get_metadata.exit_crit_edge: ; preds = %if.end4.i166
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_metadata.exit

if.end8.i.i22.i:                                  ; preds = %if.end4.i166
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i23.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i23.i, label %if.end8.i.i22.i.snd_compr_get_metadata.exit_crit_edge, label %copy_to_user.exit.i169

if.end8.i.i22.i.snd_compr_get_metadata.exit_crit_edge: ; preds = %if.end8.i.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_get_metadata.exit

copy_to_user.exit.i169:                           ; preds = %if.end8.i.i22.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i27.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %metadata.i146, i32 noundef 36) #11
  %call.i12.i.i.i167 = call i32 @arm_copy_to_user(ptr noundef %115, ptr noundef nonnull %metadata.i146, i32 noundef 36) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i167)
  %tobool11.not.i = icmp eq i32 %call.i12.i.i.i167, 0
  %spec.select.i168 = select i1 %tobool11.not.i, i32 0, i32 -14
  br label %snd_compr_get_metadata.exit

snd_compr_get_metadata.exit:                      ; preds = %copy_to_user.exit.i169, %if.end8.i.i22.i.snd_compr_get_metadata.exit_crit_edge, %if.end4.i166.snd_compr_get_metadata.exit_crit_edge, %if.then11.i.i.i164, %sw.bb42.snd_compr_get_metadata.exit_crit_edge
  %retval.0.i170 = phi i32 [ -6, %sw.bb42.snd_compr_get_metadata.exit_crit_edge ], [ %call7.i165, %if.end4.i166.snd_compr_get_metadata.exit_crit_edge ], [ -14, %if.then11.i.i.i164 ], [ -14, %if.end8.i.i22.i.snd_compr_get_metadata.exit_crit_edge ], [ %spec.select.i168, %copy_to_user.exit.i169 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %metadata.i146) #11
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call fastcc i32 @snd_compr_tstamp(ptr noundef %stream25, i32 noundef %arg)
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ioctl_avail.i) #11
  %125 = call ptr @memset(ptr %ioctl_avail.i, i32 255, i32 28)
  %call.i171 = call fastcc i32 @snd_compr_calc_avail(ptr noundef %stream25, ptr noundef nonnull %ioctl_avail.i) #11
  %conv.i = zext i32 %call.i171 to i64
  %126 = ptrtoint ptr %ioctl_avail.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv.i, ptr %ioctl_avail.i, align 8
  %runtime.i172 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %127 = ptrtoint ptr %runtime.i172 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %runtime.i172, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %128, align 8
  %131 = zext i32 %130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %130, label %sw.epilog.i [
    i32 0, label %sw.bb46.snd_compr_ioctl_avail.exit_crit_edge
    i32 4, label %sw.bb2.i
  ]

sw.bb46.snd_compr_ioctl_avail.exit_crit_edge:     ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_ioctl_avail.exit

sw.bb2.i:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_ioctl_avail.exit

sw.epilog.i:                                      ; preds = %sw.bb46
  %132 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i.i173 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i173, label %sw.epilog.i.snd_compr_ioctl_avail.exit_crit_edge, label %if.end.i.i.i176

sw.epilog.i.snd_compr_ioctl_avail.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_ioctl_avail.exit

if.end.i.i.i176:                                  ; preds = %sw.epilog.i
  %133 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %132, i32 28, i32 -1226833920) #16, !srcloc !171
  %asmresult.i.i.i174 = extractvalue { i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i174)
  %cmp.i6.i.i175 = icmp eq i32 %asmresult.i.i.i174, 0
  br i1 %cmp.i6.i.i175, label %copy_to_user.exit.i181, label %if.end.i.i.i176.snd_compr_ioctl_avail.exit_crit_edge

if.end.i.i.i176.snd_compr_ioctl_avail.exit_crit_edge: ; preds = %if.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_ioctl_avail.exit

copy_to_user.exit.i181:                           ; preds = %if.end.i.i.i176
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i177 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ioctl_avail.i, i32 noundef 28) #11
  %call.i12.i.i.i178 = call i32 @arm_copy_to_user(ptr noundef %132, ptr noundef nonnull %ioctl_avail.i, i32 noundef 28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i178)
  %tobool.not.i179 = icmp eq i32 %call.i12.i.i.i178, 0
  %spec.select.i180 = select i1 %tobool.not.i179, i32 0, i32 -14
  br label %snd_compr_ioctl_avail.exit

snd_compr_ioctl_avail.exit:                       ; preds = %copy_to_user.exit.i181, %if.end.i.i.i176.snd_compr_ioctl_avail.exit_crit_edge, %sw.epilog.i.snd_compr_ioctl_avail.exit_crit_edge, %sw.bb2.i, %sw.bb46.snd_compr_ioctl_avail.exit_crit_edge
  %retval.0.i182 = phi i32 [ -32, %sw.bb2.i ], [ -77, %sw.bb46.snd_compr_ioctl_avail.exit_crit_edge ], [ -14, %sw.epilog.i.snd_compr_ioctl_avail.exit_crit_edge ], [ -14, %if.end.i.i.i176.snd_compr_ioctl_avail.exit_crit_edge ], [ %spec.select.i180, %copy_to_user.exit.i181 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ioctl_avail.i) #11
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end24
  %runtime.i183 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %134 = ptrtoint ptr %runtime.i183 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %runtime.i183, align 4
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %135, align 8
  %138 = zext i32 %137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %137, label %sw.bb48.sw.epilog_crit_edge [
    i32 3, label %sw.bb.i
    i32 5, label %sw.bb4.i
  ]

sw.bb48.sw.epilog_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb48
  %ops.i184 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %ops.i184 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ops.i184, align 4
  %trigger.i = getelementptr inbounds %struct.snd_compr_ops, ptr %140, i32 0, i32 6
  %141 = ptrtoint ptr %trigger.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %trigger.i, align 4
  %call.i185 = tail call i32 %142(ptr noundef %stream25, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.not.i186 = icmp eq i32 %call.i185, 0
  br i1 %tobool.not.i186, label %if.then.i187, label %sw.bb.i.sw.epilog_crit_edge

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i187:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %runtime.i183 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %runtime.i183, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 6, ptr %144, align 8
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb48
  %146 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device, align 4
  %use_pause_in_draining.i = getelementptr inbounds %struct.snd_compr, ptr %147, i32 0, i32 8
  %148 = ptrtoint ptr %use_pause_in_draining.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %use_pause_in_draining.i, align 8, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool5.not.i = icmp eq i8 %149, 0
  br i1 %tobool5.not.i, label %sw.bb4.i.sw.epilog_crit_edge, label %if.end7.i189

sw.bb4.i.sw.epilog_crit_edge:                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end7.i189:                                     ; preds = %sw.bb4.i
  %ops8.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %150 = ptrtoint ptr %ops8.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ops8.i, align 4
  %trigger9.i = getelementptr inbounds %struct.snd_compr_ops, ptr %151, i32 0, i32 6
  %152 = ptrtoint ptr %trigger9.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %trigger9.i, align 4
  %call10.i = tail call i32 %153(ptr noundef %stream25, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i188 = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i188, label %if.then12.i, label %if.end7.i189.sw.epilog_crit_edge

if.end7.i189.sw.epilog_crit_edge:                 ; preds = %if.end7.i189
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then12.i:                                      ; preds = %if.end7.i189
  call void @__sanitizer_cov_trace_pc() #13
  %pause_in_draining.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 9
  %154 = ptrtoint ptr %pause_in_draining.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %pause_in_draining.i, align 1
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end24
  %runtime.i191 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %155 = ptrtoint ptr %runtime.i191 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %runtime.i191, align 4
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %156, align 8
  %159 = zext i32 %158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %159, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %158, label %sw.bb50.sw.epilog_crit_edge [
    i32 6, label %sw.bb.i196
    i32 5, label %sw.bb4.i200
  ]

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i196:                                       ; preds = %sw.bb50
  %ops.i192 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %160 = ptrtoint ptr %ops.i192 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %ops.i192, align 4
  %trigger.i193 = getelementptr inbounds %struct.snd_compr_ops, ptr %161, i32 0, i32 6
  %162 = ptrtoint ptr %trigger.i193 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %trigger.i193, align 4
  %call.i194 = tail call i32 %163(ptr noundef %stream25, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %if.then.i197, label %sw.bb.i196.sw.epilog_crit_edge

sw.bb.i196.sw.epilog_crit_edge:                   ; preds = %sw.bb.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i197:                                     ; preds = %sw.bb.i196
  call void @__sanitizer_cov_trace_pc() #13
  %164 = ptrtoint ptr %runtime.i191 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %runtime.i191, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 3, ptr %165, align 8
  br label %sw.epilog

sw.bb4.i200:                                      ; preds = %sw.bb50
  %pause_in_draining.i198 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 9
  %167 = ptrtoint ptr %pause_in_draining.i198 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %pause_in_draining.i198, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool5.not.i199 = icmp eq i8 %168, 0
  br i1 %tobool5.not.i199, label %sw.bb4.i200.sw.epilog_crit_edge, label %if.end7.i205

sw.bb4.i200.sw.epilog_crit_edge:                  ; preds = %sw.bb4.i200
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end7.i205:                                     ; preds = %sw.bb4.i200
  %ops8.i201 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %169 = ptrtoint ptr %ops8.i201 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ops8.i201, align 4
  %trigger9.i202 = getelementptr inbounds %struct.snd_compr_ops, ptr %170, i32 0, i32 6
  %171 = ptrtoint ptr %trigger9.i202 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %trigger9.i202, align 4
  %call10.i203 = tail call i32 %172(ptr noundef %stream25, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i203)
  %tobool11.not.i204 = icmp eq i32 %call10.i203, 0
  br i1 %tobool11.not.i204, label %if.then12.i206, label %if.end7.i205.sw.epilog_crit_edge

if.end7.i205.sw.epilog_crit_edge:                 ; preds = %if.end7.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then12.i206:                                   ; preds = %if.end7.i205
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %pause_in_draining.i198 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %pause_in_draining.i198, align 1
  br label %sw.epilog

sw.bb52:                                          ; preds = %if.end24
  %runtime.i208 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %174 = ptrtoint ptr %runtime.i208 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %runtime.i208, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %175, align 8
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %177, label %sw.bb52.sw.epilog_crit_edge [
    i32 1, label %sw.bb.i210
    i32 2, label %sw.bb52.sw.epilog.i215_crit_edge
  ]

sw.bb52.sw.epilog.i215_crit_edge:                 ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i215

sw.bb52.sw.epilog_crit_edge:                      ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i210:                                       ; preds = %sw.bb52
  %direction.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %179 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %180)
  %cmp.not.i209 = icmp eq i32 %180, 1
  br i1 %cmp.not.i209, label %sw.bb.i210.sw.epilog.i215_crit_edge, label %sw.bb.i210.sw.epilog_crit_edge

sw.bb.i210.sw.epilog_crit_edge:                   ; preds = %sw.bb.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb.i210.sw.epilog.i215_crit_edge:              ; preds = %sw.bb.i210
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i215

sw.epilog.i215:                                   ; preds = %sw.bb.i210.sw.epilog.i215_crit_edge, %sw.bb52.sw.epilog.i215_crit_edge
  %ops.i211 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %181 = ptrtoint ptr %ops.i211 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ops.i211, align 4
  %trigger.i212 = getelementptr inbounds %struct.snd_compr_ops, ptr %182, i32 0, i32 6
  %183 = ptrtoint ptr %trigger.i212 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %trigger.i212, align 4
  %call.i213 = tail call i32 %184(ptr noundef %stream25, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool.not.i214 = icmp eq i32 %call.i213, 0
  br i1 %tobool.not.i214, label %if.then2.i, label %sw.epilog.i215.sw.epilog_crit_edge

sw.epilog.i215.sw.epilog_crit_edge:               ; preds = %sw.epilog.i215
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then2.i:                                       ; preds = %sw.epilog.i215
  call void @__sanitizer_cov_trace_pc() #13
  %185 = ptrtoint ptr %runtime.i208 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %runtime.i208, align 4
  %187 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 3, ptr %186, align 8
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end24
  %runtime.i217 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %188 = ptrtoint ptr %runtime.i217 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %runtime.i217, align 4
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %switch.i = icmp ult i32 %191, 3
  br i1 %switch.i, label %sw.bb54.sw.epilog_crit_edge, label %sw.epilog.i222

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.i222:                                   ; preds = %sw.bb54
  %ops.i218 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %192 = ptrtoint ptr %ops.i218 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ops.i218, align 4
  %trigger.i219 = getelementptr inbounds %struct.snd_compr_ops, ptr %193, i32 0, i32 6
  %194 = ptrtoint ptr %trigger.i219 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %trigger.i219, align 4
  %call.i220 = tail call i32 %195(ptr noundef %stream25, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %tobool.not.i221 = icmp eq i32 %call.i220, 0
  br i1 %tobool.not.i221, label %if.then.i226, label %sw.epilog.i222.sw.epilog_crit_edge

sw.epilog.i222.sw.epilog_crit_edge:               ; preds = %sw.epilog.i222
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then.i226:                                     ; preds = %sw.epilog.i222
  %partial_drain.i = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 8
  %196 = ptrtoint ptr %partial_drain.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 0, ptr %partial_drain.i, align 2
  %metadata_set.i223 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 6
  %197 = ptrtoint ptr %metadata_set.i223 to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %metadata_set.i223, align 4
  %pause_in_draining.i224 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 9
  %198 = ptrtoint ptr %pause_in_draining.i224 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %pause_in_draining.i224, align 1
  %tobool.not.i.i225 = icmp eq ptr %stream25, null
  br i1 %tobool.not.i.i225, label %do.end.i.i, label %if.end29.i.i, !prof !165

do.end.i.i:                                       ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 198, i32 noundef 9, ptr noundef null) #11
  br label %snd_compr_drain_notify.exit.i

if.end29.i.i:                                     ; preds = %if.then.i226
  call void @__sanitizer_cov_trace_pc() #13
  %199 = ptrtoint ptr %runtime.i217 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %runtime.i217, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 1, ptr %200, align 8
  %202 = load ptr, ptr %runtime.i217, align 4
  %sleep.i.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %202, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %snd_compr_drain_notify.exit.i

snd_compr_drain_notify.exit.i:                    ; preds = %if.end29.i.i, %do.end.i.i
  %203 = ptrtoint ptr %runtime.i217 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %runtime.i217, align 4
  %total_bytes_available.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %204, i32 0, i32 6
  %205 = ptrtoint ptr %total_bytes_available.i to i32
  call void @__asan_store8_noabort(i32 %205)
  store i64 0, ptr %total_bytes_available.i, align 8
  %206 = load ptr, ptr %runtime.i217, align 4
  %total_bytes_transferred.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %206, i32 0, i32 7
  %207 = ptrtoint ptr %total_bytes_transferred.i to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 0, ptr %total_bytes_transferred.i, align 8
  br label %sw.epilog

sw.bb56:                                          ; preds = %if.end24
  %runtime.i228 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %208 = ptrtoint ptr %runtime.i228 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %runtime.i228, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %211)
  %212 = icmp ult i32 %211, 7
  br i1 %212, label %switch.hole_check, label %sw.bb56.sw.epilog.i234_crit_edge

sw.bb56.sw.epilog.i234_crit_edge:                 ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i234

sw.epilog.i234:                                   ; preds = %switch.hole_check.sw.epilog.i234_crit_edge, %sw.bb56.sw.epilog.i234_crit_edge
  %ops.i230 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %213 = ptrtoint ptr %ops.i230 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ops.i230, align 4
  %trigger.i231 = getelementptr inbounds %struct.snd_compr_ops, ptr %214, i32 0, i32 6
  %215 = ptrtoint ptr %trigger.i231 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %trigger.i231, align 4
  %call.i232 = tail call i32 %216(ptr noundef %stream25, i32 noundef 7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i232)
  %tobool.not.i233 = icmp eq i32 %call.i232, 0
  br i1 %tobool.not.i233, label %if.end9.i, label %do.body.i

do.body.i:                                        ; preds = %sw.epilog.i234
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_drain.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_ioctl, %if.then7.i)) #11
          to label %do.end.i [label %if.then7.i], !srcloc !166

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_drain.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 891, i32 noundef %call.i232) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i
  %217 = ptrtoint ptr %runtime.i228 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %runtime.i228, align 4
  %sleep.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %218, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

if.end9.i:                                        ; preds = %sw.epilog.i234
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i235 = tail call fastcc i32 @snd_compress_wait_for_drain(ptr noundef %stream25) #11
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end24
  %runtime.i237 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %219 = ptrtoint ptr %runtime.i237 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %runtime.i237, align 4
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %220, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %222)
  %223 = icmp ult i32 %222, 7
  br i1 %223, label %switch.hole_check265, label %sw.bb58.sw.epilog.i241_crit_edge

sw.bb58.sw.epilog.i241_crit_edge:                 ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i241

sw.epilog.i241:                                   ; preds = %switch.hole_check265.sw.epilog.i241_crit_edge, %sw.bb58.sw.epilog.i241_crit_edge
  %direction.i239 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %224 = ptrtoint ptr %direction.i239 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %direction.i239, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %225)
  %cmp.i240 = icmp eq i32 %225, 1
  br i1 %cmp.i240, label %sw.epilog.i241.sw.epilog_crit_edge, label %if.end.i243

sw.epilog.i241.sw.epilog_crit_edge:               ; preds = %sw.epilog.i241
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i243:                                      ; preds = %sw.epilog.i241
  %next_track.i242 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 7
  %226 = ptrtoint ptr %next_track.i242 to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %next_track.i242, align 1, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %cmp3.i = icmp eq i8 %227, 0
  br i1 %cmp3.i, label %if.end.i243.sw.epilog_crit_edge, label %if.end6.i248

if.end.i243.sw.epilog_crit_edge:                  ; preds = %if.end.i243
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end6.i248:                                     ; preds = %if.end.i243
  %partial_drain.i244 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 8
  %228 = ptrtoint ptr %partial_drain.i244 to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 1, ptr %partial_drain.i244, align 2
  %ops.i245 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %229 = ptrtoint ptr %ops.i245 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %ops.i245, align 4
  %trigger.i246 = getelementptr inbounds %struct.snd_compr_ops, ptr %230, i32 0, i32 6
  %231 = ptrtoint ptr %trigger.i246 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %trigger.i246, align 4
  %call.i247 = tail call i32 %232(ptr noundef %stream25, i32 noundef 9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i247)
  %tobool7.not.i = icmp eq i32 %call.i247, 0
  br i1 %tobool7.not.i, label %if.end16.i, label %do.body.i249

do.body.i249:                                     ; preds = %if.end6.i248
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_partial_drain.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_ioctl, %if.then13.i)) #11
          to label %do.end.i251 [label %if.then13.i], !srcloc !166

if.then13.i:                                      ; preds = %do.body.i249
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_partial_drain.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 952) #11
  br label %do.end.i251

do.end.i251:                                      ; preds = %if.then13.i, %do.body.i249
  %233 = ptrtoint ptr %runtime.i237 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %runtime.i237, align 4
  %sleep.i250 = getelementptr inbounds %struct.snd_compr_runtime, ptr %234, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep.i250, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

if.end16.i:                                       ; preds = %if.end6.i248
  call void @__sanitizer_cov_trace_pc() #13
  %235 = ptrtoint ptr %next_track.i242 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 0, ptr %next_track.i242, align 1
  %call18.i = tail call fastcc i32 @snd_compress_wait_for_drain(ptr noundef %stream25) #11
  br label %sw.epilog

sw.bb60:                                          ; preds = %if.end24
  %runtime.i253 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %236 = ptrtoint ptr %runtime.i253 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %runtime.i253, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %239)
  %cmp.not.i254 = icmp eq i32 %239, 3
  br i1 %cmp.not.i254, label %if.end.i256, label %sw.bb60.sw.epilog_crit_edge

sw.bb60.sw.epilog_crit_edge:                      ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i256:                                      ; preds = %sw.bb60
  %direction.i255 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 5
  %240 = ptrtoint ptr %direction.i255 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %direction.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %241)
  %cmp2.i = icmp eq i32 %241, 1
  br i1 %cmp2.i, label %if.end.i256.sw.epilog_crit_edge, label %if.end4.i258

if.end.i256.sw.epilog_crit_edge:                  ; preds = %if.end.i256
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end4.i258:                                     ; preds = %if.end.i256
  %metadata_set.i257 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 6
  %242 = ptrtoint ptr %metadata_set.i257 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %metadata_set.i257, align 4, !range !174
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %243)
  %cmp5.i = icmp eq i8 %243, 0
  br i1 %cmp5.i, label %if.end4.i258.sw.epilog_crit_edge, label %if.end8.i

if.end4.i258.sw.epilog_crit_edge:                 ; preds = %if.end4.i258
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end8.i:                                        ; preds = %if.end4.i258
  %ops.i259 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %244 = ptrtoint ptr %ops.i259 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %ops.i259, align 4
  %trigger.i260 = getelementptr inbounds %struct.snd_compr_ops, ptr %245, i32 0, i32 6
  %246 = ptrtoint ptr %trigger.i260 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %trigger.i260, align 4
  %call.i261 = tail call i32 %247(ptr noundef %stream25, i32 noundef 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261)
  %cmp9.not.i = icmp eq i32 %call.i261, 0
  br i1 %cmp9.not.i, label %if.end12.i, label %if.end8.i.sw.epilog_crit_edge

if.end8.i.sw.epilog_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %248 = ptrtoint ptr %metadata_set.i257 to i32
  call void @__asan_store1_noabort(i32 %248)
  store i8 0, ptr %metadata_set.i257, align 4
  %next_track.i262 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 7
  %249 = ptrtoint ptr %next_track.i262 to i32
  call void @__asan_store1_noabort(i32 %249)
  store i8 1, ptr %next_track.i262, align 1
  br label %sw.epilog

switch.hole_check:                                ; preds = %sw.bb56
  %switch.maskindex = trunc i32 %211 to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %250 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %switch.lobit.not = icmp eq i8 %250, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog.i234_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog.i234_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i234

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.snd_compr_ioctl, i32 0, i32 %211
  %251 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %251)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

switch.hole_check265:                             ; preds = %sw.bb58
  %switch.maskindex267 = trunc i32 %222 to i8
  %switch.shifted268 = lshr i8 87, %switch.maskindex267
  %252 = and i8 %switch.shifted268, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %switch.lobit269.not = icmp eq i8 %252, 0
  br i1 %switch.lobit269.not, label %switch.hole_check265.sw.epilog.i241_crit_edge, label %switch.lookup266

switch.hole_check265.sw.epilog.i241_crit_edge:    ; preds = %switch.hole_check265
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i241

switch.lookup266:                                 ; preds = %switch.hole_check265
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep270 = getelementptr inbounds [7 x i32], ptr @switch.table.snd_compr_ioctl.74, i32 0, i32 %222
  %253 = ptrtoint ptr %switch.gep270 to i32
  call void @__asan_load4_noabort(i32 %253)
  %switch.load271 = load i32, ptr %switch.gep270, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup266, %switch.lookup, %if.end12.i, %if.end8.i.sw.epilog_crit_edge, %if.end4.i258.sw.epilog_crit_edge, %if.end.i256.sw.epilog_crit_edge, %sw.bb60.sw.epilog_crit_edge, %if.end16.i, %do.end.i251, %if.end.i243.sw.epilog_crit_edge, %sw.epilog.i241.sw.epilog_crit_edge, %if.end9.i, %do.end.i, %snd_compr_drain_notify.exit.i, %sw.epilog.i222.sw.epilog_crit_edge, %sw.bb54.sw.epilog_crit_edge, %if.then2.i, %sw.epilog.i215.sw.epilog_crit_edge, %sw.bb.i210.sw.epilog_crit_edge, %sw.bb52.sw.epilog_crit_edge, %if.then12.i206, %if.end7.i205.sw.epilog_crit_edge, %sw.bb4.i200.sw.epilog_crit_edge, %if.then.i197, %sw.bb.i196.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %if.then12.i, %if.end7.i189.sw.epilog_crit_edge, %sw.bb4.i.sw.epilog_crit_edge, %if.then.i187, %sw.bb.i.sw.epilog_crit_edge, %sw.bb48.sw.epilog_crit_edge, %snd_compr_ioctl_avail.exit, %sw.bb44, %snd_compr_get_metadata.exit, %snd_compr_set_metadata.exit, %out.i131, %if.end.i116.sw.epilog_crit_edge, %sw.bb38.sw.epilog_crit_edge, %out.i110, %if.then3.i, %sw.bb36.sw.epilog_crit_edge, %out.i, %if.end.i94.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %snd_compr_get_caps.exit, %sw.bb, %if.end24.sw.epilog_crit_edge
  %retval1.0 = phi i32 [ -25, %if.end24.sw.epilog_crit_edge ], [ %retval.0.i182, %snd_compr_ioctl_avail.exit ], [ %call45, %sw.bb44 ], [ %retval.0.i170, %snd_compr_get_metadata.exit ], [ %retval.0.i145, %snd_compr_set_metadata.exit ], [ %retval.0.i, %snd_compr_get_caps.exit ], [ %cond, %sw.bb ], [ %retval1.0.i, %out.i ], [ -6, %sw.bb34.sw.epilog_crit_edge ], [ -12, %if.end.i94.sw.epilog_crit_edge ], [ %34, %if.then3.i ], [ %retval1.0.i109, %out.i110 ], [ -1, %sw.bb36.sw.epilog_crit_edge ], [ %retval1.0.i130, %out.i131 ], [ -77, %sw.bb38.sw.epilog_crit_edge ], [ -12, %if.end.i116.sw.epilog_crit_edge ], [ -1, %sw.bb4.i.sw.epilog_crit_edge ], [ -1, %sw.bb48.sw.epilog_crit_edge ], [ %call10.i, %if.end7.i189.sw.epilog_crit_edge ], [ 0, %if.then12.i ], [ %call.i185, %sw.bb.i.sw.epilog_crit_edge ], [ 0, %if.then.i187 ], [ -1, %sw.bb4.i200.sw.epilog_crit_edge ], [ -1, %sw.bb50.sw.epilog_crit_edge ], [ %call10.i203, %if.end7.i205.sw.epilog_crit_edge ], [ 0, %if.then12.i206 ], [ %call.i194, %sw.bb.i196.sw.epilog_crit_edge ], [ 0, %if.then.i197 ], [ -1, %sw.bb.i210.sw.epilog_crit_edge ], [ -1, %sw.bb52.sw.epilog_crit_edge ], [ 0, %if.then2.i ], [ %call.i213, %sw.epilog.i215.sw.epilog_crit_edge ], [ -1, %sw.bb54.sw.epilog_crit_edge ], [ 0, %snd_compr_drain_notify.exit.i ], [ %call.i220, %sw.epilog.i222.sw.epilog_crit_edge ], [ %call.i232, %do.end.i ], [ %call10.i235, %if.end9.i ], [ %call.i247, %do.end.i251 ], [ %call18.i, %if.end16.i ], [ -1, %sw.epilog.i241.sw.epilog_crit_edge ], [ -1, %if.end.i243.sw.epilog_crit_edge ], [ 0, %if.end12.i ], [ -1, %sw.bb60.sw.epilog_crit_edge ], [ -1, %if.end.i256.sw.epilog_crit_edge ], [ -1, %if.end4.i258.sw.epilog_crit_edge ], [ %call.i261, %if.end8.i.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ], [ %switch.load271, %switch.lookup266 ]
  %254 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %device, align 4
  %lock63 = getelementptr inbounds %struct.snd_compr, ptr %255, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock63) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ %retval1.0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_compr_mmap(ptr nocapture noundef readnone %f, ptr nocapture noundef readnone %vma) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %shr.i = lshr i32 %1, 20
  %f_flags = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 7
  %2 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_flags, align 4
  %and = and i32 %3, 3
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 1, label %entry.if.end6_crit_edge
    i32 0, label %if.then4
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %entry.if.end6_crit_edge
  %dirn.0 = phi i32 [ 1, %if.then4 ], [ 0, %entry.if.end6_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_major to i32))
  %5 = load i32, ptr @snd_major, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %5)
  %cmp7 = icmp eq i32 %shr.i, %5
  br i1 %cmp7, label %if.then8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end6
  %and.i = and i32 %1, 1048575
  %call10 = tail call ptr @snd_lookup_minor_data(i32 noundef %and.i, i32 noundef 7) #11
  %cmp13 = icmp eq ptr %call10, null
  br i1 %cmp13, label %do.end, label %if.end16

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 98) #15
  br label %cleanup

if.end16:                                         ; preds = %if.then8
  %direction = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 5
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dirn.0, i32 %7)
  %cmp17.not = icmp eq i32 %dirn.0, %7
  br i1 %cmp17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 103) #15
  %card = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 4
  %8 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card, align 8
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 164) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then26, label %do.body30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %card27 = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 4
  %11 = ptrtoint ptr %card27 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card27, align 8
  %card_dev.i121 = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i121) #11
  br label %cleanup

do.body30:                                        ; preds = %if.end24
  %error_work = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4
  tail call void @__init_work(ptr noundef %error_work, i32 noundef 0) #11
  %13 = ptrtoint ptr %error_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %error_work, align 4
  %lockdep_map = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.61, ptr noundef nonnull @snd_compr_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry41 = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 0, i32 1
  %14 = ptrtoint ptr %entry41 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry41, ptr %entry41, align 8
  %prev.i = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry41, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 0, i32 2
  %16 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @error_delayed_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.63, ptr noundef nonnull @snd_compr_open.__key.62) #11
  %ops = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 2
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 8
  %ops55 = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %ops55 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %ops55, align 8
  %direction57 = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %direction57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dirn.0, ptr %direction57, align 8
  %private_data = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 3
  %21 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data, align 4
  %private_data59 = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 10
  %23 = ptrtoint ptr %private_data59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %private_data59, align 8
  %device = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10, ptr %device, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i122 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 120) #14
  %tobool62.not = icmp eq ptr %call7.i.i122, null
  br i1 %tobool62.not, label %if.then63, label %if.end65

if.then63:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %card64 = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 4
  %26 = ptrtoint ptr %card64 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card64, align 8
  %card_dev.i123 = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i123) #11
  br label %cleanup

if.end65:                                         ; preds = %do.body30
  %stream = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %call7.i.i122 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %call7.i.i122, align 8
  %sleep = getelementptr inbounds %struct.snd_compr_runtime, ptr %call7.i.i122, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %sleep, ptr noundef nonnull @.str.65, ptr noundef nonnull @snd_compr_open.__key.64) #11
  %runtime70 = getelementptr inbounds %struct.snd_compr_file, ptr %call7.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %runtime70 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i122, ptr %runtime70, align 4
  %private_data71 = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %30 = ptrtoint ptr %private_data71 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %private_data71, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call74 = tail call i32 %34(ptr noundef %stream) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool76.not = icmp eq i32 %call74, 0
  br i1 %tobool76.not, label %if.end65.if.end78_crit_edge, label %if.then77

if.end65.if.end78_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then77:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i122) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end65.if.end78_crit_edge
  %card79 = getelementptr inbounds %struct.snd_compr, ptr %call10, i32 0, i32 4
  %35 = ptrtoint ptr %card79 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card79, align 8
  %card_dev.i124 = getelementptr inbounds %struct.snd_card, ptr %36, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i124) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %if.then63, %if.then26, %do.end21, %do.end, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end21 ], [ %call74, %if.end78 ], [ -12, %if.then63 ], [ -12, %if.then26 ], [ -22, %entry.cleanup_crit_edge ], [ -77, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_compr_free(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %stream = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1
  %runtime1 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %error_work = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 4
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %error_work) #11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge25
    i32 6, label %entry.sw.bb_crit_edge26
  ]

entry.sw.bb_crit_edge26:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge25, %entry.sw.bb_crit_edge26
  %ops = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %trigger = getelementptr inbounds %struct.snd_compr_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %trigger, align 4
  %call5 = tail call i32 %10(ptr noundef %stream, i32 noundef 0) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ops7 = getelementptr inbounds %struct.snd_compr_file, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ops7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops7, align 4
  %free = getelementptr inbounds %struct.snd_compr_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free, align 4
  %call9 = tail call i32 %14(ptr noundef %stream) #11
  %15 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %runtime1, align 4
  %dma_buffer_p = getelementptr inbounds %struct.snd_compr_runtime, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %dma_buffer_p to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_buffer_p, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %buffer = getelementptr inbounds %struct.snd_compr_runtime, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 8
  tail call void @kfree(ptr noundef %20) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %21 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %runtime1, align 4
  tail call void @kfree(ptr noundef %22) #11
  tail call void @kfree(ptr noundef %1) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_compr_calc_avail(ptr noundef %stream, ptr noundef %avail) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %avail, i32 0, i32 28)
  %tstamp = getelementptr inbounds %struct.snd_compr_avail, ptr %avail, i32 0, i32 1
  %ops.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %pointer.i = getelementptr inbounds %struct.snd_compr_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pointer.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.snd_compr_update_tstamp.exit_crit_edge, label %if.end.i

entry.snd_compr_update_tstamp.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %snd_compr_update_tstamp.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 %4(ptr noundef %stream, ptr noundef %tstamp) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_update_tstamp.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then7.i)) #11
          to label %do.end.i [label %if.then7.i], !srcloc !166

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %tstamp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tstamp, align 4
  %copied_total.i = getelementptr inbounds %struct.snd_compr_avail, ptr %avail, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %copied_total.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %copied_total.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_update_tstamp.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 173, i32 noundef %6, i32 noundef %8) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %if.end.i
  %direction.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %copied_total10.i = getelementptr inbounds %struct.snd_compr_avail, ptr %avail, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %copied_total10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %copied_total10.i, align 4
  %conv.i = zext i32 %12 to i64
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %13 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime.i, align 4
  %total_bytes_transferred.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %14, i32 0, i32 7
  %total_bytes_available.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %14, i32 0, i32 6
  %total_bytes_transferred.sink.i = select i1 %cmp.i, ptr %total_bytes_transferred.i, ptr %total_bytes_available.i
  %15 = ptrtoint ptr %total_bytes_transferred.sink.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i, ptr %total_bytes_transferred.sink.i, align 8
  br label %snd_compr_update_tstamp.exit

snd_compr_update_tstamp.exit:                     ; preds = %do.end.i, %entry.snd_compr_update_tstamp.exit_crit_edge
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %total_bytes_available = getelementptr inbounds %struct.snd_compr_runtime, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %total_bytes_available to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %total_bytes_available, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp = icmp eq i64 %19, 0
  br i1 %cmp, label %land.lhs.true, label %snd_compr_update_tstamp.exit.do.body11_crit_edge

snd_compr_update_tstamp.exit.do.body11_crit_edge: ; preds = %snd_compr_update_tstamp.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

land.lhs.true:                                    ; preds = %snd_compr_update_tstamp.exit
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp2 = icmp eq i32 %21, 1
  br i1 %cmp2, label %land.lhs.true3, label %land.lhs.true.do.body11_crit_edge

land.lhs.true.do.body11_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

land.lhs.true3:                                   ; preds = %land.lhs.true
  %direction = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %22 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4 = icmp eq i32 %23, 0
  br i1 %cmp4, label %do.body, label %land.lhs.true3.do.body11_crit_edge

land.lhs.true3.do.body11_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body11

do.body:                                          ; preds = %land.lhs.true3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then8)) #11
          to label %do.end [label %if.then8], !srcloc !166

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_calc_avail.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, i32 noundef 191) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %buffer_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %buffer_size, align 8
  %conv = trunc i64 %27 to i32
  br label %return

do.body11:                                        ; preds = %land.lhs.true3.do.body11_crit_edge, %land.lhs.true.do.body11_crit_edge, %snd_compr_update_tstamp.exit.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then23)) #11
          to label %do.end28 [label %if.then23], !srcloc !166

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %runtime, align 4
  %total_bytes_available25 = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %total_bytes_available25 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %total_bytes_available25, align 8
  %total_bytes_transferred = getelementptr inbounds %struct.snd_compr_runtime, ptr %29, i32 0, i32 7
  %32 = ptrtoint ptr %total_bytes_transferred to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %total_bytes_transferred, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_calc_avail.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.14, i32 noundef 196, i64 noundef %31, i64 noundef %33) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body11
  %34 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %runtime, align 4
  %total_bytes_available30 = getelementptr inbounds %struct.snd_compr_runtime, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %total_bytes_available30 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %total_bytes_available30, align 8
  %total_bytes_transferred32 = getelementptr inbounds %struct.snd_compr_runtime, ptr %35, i32 0, i32 7
  %38 = ptrtoint ptr %total_bytes_transferred32 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %total_bytes_transferred32, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %37, i64 %39)
  %cmp33 = icmp eq i64 %37, %39
  br i1 %cmp33, label %if.then35, label %if.end73

if.then35:                                        ; preds = %do.end28
  %direction36 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %40 = ptrtoint ptr %direction36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %direction36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp37 = icmp eq i32 %41, 0
  br i1 %cmp37, label %do.body40, label %do.body58

do.body40:                                        ; preds = %if.then35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then52)) #11
          to label %do.end54 [label %if.then52], !srcloc !166

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_calc_avail.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.14, i32 noundef 200) #11
  br label %do.end54

do.end54:                                         ; preds = %if.then52, %do.body40
  %42 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %runtime, align 4
  %buffer_size56 = getelementptr inbounds %struct.snd_compr_runtime, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %buffer_size56 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %buffer_size56, align 8
  %conv57 = trunc i64 %45 to i32
  br label %return

do.body58:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then70)) #11
          to label %return [label %if.then70], !srcloc !166

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_calc_avail.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.14, i32 noundef 203) #11
  br label %return

if.end73:                                         ; preds = %do.end28
  %sub = sub i64 %37, %39
  %46 = ptrtoint ptr %avail to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %sub, ptr %avail, align 4
  %direction79 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %47 = ptrtoint ptr %direction79 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %direction79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp80 = icmp eq i32 %48, 0
  br i1 %cmp80, label %if.then82, label %if.end73.do.body89_crit_edge

if.end73.do.body89_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body89

if.then82:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %runtime, align 4
  %buffer_size84 = getelementptr inbounds %struct.snd_compr_runtime, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %buffer_size84 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %buffer_size84, align 8
  %sub86 = sub i64 %52, %sub
  %53 = ptrtoint ptr %avail to i32
  call void @__asan_storeN_noabort(i32 %53, i32 8)
  store i64 %sub86, ptr %avail, align 4
  br label %do.body89

do.body89:                                        ; preds = %if.then82, %if.end73.do.body89_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_calc_avail, %if.then101)) #11
          to label %do.end104 [label %if.then101], !srcloc !166

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %avail to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %avail, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_calc_avail.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14, i32 noundef 213, i64 noundef %55) #11
  br label %do.end104

do.end104:                                        ; preds = %if.then101, %do.body89
  %56 = ptrtoint ptr %avail to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %57 = load i64, ptr %avail, align 4
  %conv106 = trunc i64 %57 to i32
  br label %return

return:                                           ; preds = %do.end104, %if.then70, %do.body58, %do.end54, %do.end
  %retval.0 = phi i32 [ %conv, %do.end ], [ %conv57, %do.end54 ], [ %conv106, %do.end104 ], [ 0, %if.then70 ], [ 0, %do.body58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_compr_write_data(ptr noundef %stream, ptr noundef %buf, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %total_bytes_available = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %total_bytes_available to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %total_bytes_available, align 8
  %buffer_size = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %buffer_size, align 8
  %call = tail call i64 @div64_u64(i64 noundef %3, i64 noundef %5) #11
  %6 = ptrtoint ptr %total_bytes_available to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %total_bytes_available, align 8
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buffer_size, align 8
  %mul = mul i64 %9, %call
  %sub = sub i64 %7, %mul
  %buffer = getelementptr inbounds %struct.snd_compr_runtime, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 8
  %idx.ext = trunc i64 %sub to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %idx.ext
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_write_data.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_write_data, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !166

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_write_data.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 262, i32 noundef %count, i64 noundef %sub) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv = zext i32 %count to i64
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %buffer_size, align 8
  %sub8 = sub i64 %13, %sub
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8, i64 %conv)
  %cmp = icmp ugt i64 %sub8, %conv
  br i1 %cmp, label %if.end8.i.i, label %if.else

if.end8.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.i.i = icmp slt i32 %count, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end8.i.i
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !173

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end8.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count, i32 -1226833920) #16, !srcloc !172
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !173

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count) #11
  %15 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !167
  %and.i.i.i.i = and i32 %17, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end29_crit_edge, label %if.then11.i.i, !prof !173

if.end.i.i.if.end29_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %count, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %18 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.else:                                          ; preds = %do.end
  %conv17 = trunc i64 %sub8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv17)
  %cmp9.i.i69 = icmp slt i32 %conv17, 0
  br i1 %cmp9.i.i69, label %land.rhs16.i.i72, label %if.then.i.i.i75

land.rhs16.i.i72:                                 ; preds = %if.else
  %.b71.i.i71 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i71, label %land.rhs16.i.i72.cleanup_crit_edge, label %if.then27.i.i73, !prof !173

land.rhs16.i.i72.cleanup_crit_edge:               ; preds = %land.rhs16.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i73:                                  ; preds = %land.rhs16.i.i72
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i75:                                  ; preds = %if.else
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %conv17, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #11
  %call.i.i76 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i76, label %if.then.i.i.i75.if.end.i.i90_crit_edge, label %land.lhs.true.i.i80

if.then.i.i.i75.if.end.i.i90_crit_edge:           ; preds = %if.then.i.i.i75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i90

land.lhs.true.i.i80:                              ; preds = %if.then.i.i.i75
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %conv17, i32 -1226833920) #16, !srcloc !172
  %asmresult.i.i78 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i78)
  %cmp.i6.i79 = icmp eq i32 %asmresult.i.i78, 0
  br i1 %cmp.i6.i79, label %if.then.i7.i87, label %land.lhs.true.i.i80.if.end.i.i90_crit_edge, !prof !173

land.lhs.true.i.i80.if.end.i.i90_crit_edge:       ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i90

if.then.i7.i87:                                   ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %conv17) #11
  %20 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i82 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i82 to ptr
  %cpu_domain.i.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i83) #7, !srcloc !167
  %and.i.i.i.i84 = and i32 %22, -13
  %or.i.i.i.i85 = or i32 %and.i.i.i.i84, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i85) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %call1.i.i.i86 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %conv17) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  br label %if.end.i.i90

if.end.i.i90:                                     ; preds = %if.then.i7.i87, %land.lhs.true.i.i80.if.end.i.i90_crit_edge, %if.then.i.i.i75.if.end.i.i90_crit_edge
  %res.0.i.i88 = phi i32 [ %conv17, %if.then.i.i.i75.if.end.i.i90_crit_edge ], [ %call1.i.i.i86, %if.then.i7.i87 ], [ %conv17, %land.lhs.true.i.i80.if.end.i.i90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i88)
  %tobool4.not.i.i89 = icmp eq i32 %res.0.i.i88, 0
  br i1 %tobool4.not.i.i89, label %if.end21, label %if.then11.i.i93, !prof !173

if.then11.i.i93:                                  ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i91 = sub i32 %conv17, %res.0.i.i88
  %add.ptr.i.i92 = getelementptr i8, ptr %add.ptr, i32 %sub.i.i91
  %23 = call ptr @memset(ptr %add.ptr.i.i92, i32 0, i32 %res.0.i.i88)
  br label %cleanup

if.end21:                                         ; preds = %if.end.i.i90
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 8
  %add.ptr23 = getelementptr i8, ptr %buf, i32 %conv17
  %sub24 = sub i32 %count, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp9.i.i102 = icmp slt i32 %sub24, 0
  br i1 %cmp9.i.i102, label %land.rhs16.i.i105, label %if.then.i.i.i108

land.rhs16.i.i105:                                ; preds = %if.end21
  %.b71.i.i104 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i104, label %land.rhs16.i.i105.cleanup_crit_edge, label %if.then27.i.i106, !prof !173

land.rhs16.i.i105.cleanup_crit_edge:              ; preds = %land.rhs16.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then27.i.i106:                                 ; preds = %land.rhs16.i.i105
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.then.i.i.i108:                                 ; preds = %if.end21
  tail call void @__check_object_size(ptr noundef %25, i32 noundef %sub24, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #11
  %call.i.i109 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i109, label %if.then.i.i.i108.if.end.i.i123_crit_edge, label %land.lhs.true.i.i113

if.then.i.i.i108.if.end.i.i123_crit_edge:         ; preds = %if.then.i.i.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i123

land.lhs.true.i.i113:                             ; preds = %if.then.i.i.i108
  %26 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr23, i32 %sub24, i32 -1226833920) #16, !srcloc !172
  %asmresult.i.i111 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i111)
  %cmp.i6.i112 = icmp eq i32 %asmresult.i.i111, 0
  br i1 %cmp.i6.i112, label %if.then.i7.i120, label %land.lhs.true.i.i113.if.end.i.i123_crit_edge, !prof !173

land.lhs.true.i.i113.if.end.i.i123_crit_edge:     ; preds = %land.lhs.true.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i123

if.then.i7.i120:                                  ; preds = %land.lhs.true.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i114 = tail call zeroext i1 @__kasan_check_write(ptr noundef %25, i32 noundef %sub24) #11
  %27 = tail call i32 @llvm.read_register.i32(metadata !155) #11
  %and.i.i.i.i.i.i115 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i115 to ptr
  %cpu_domain.i.i.i.i.i116 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 4
  %29 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i116) #7, !srcloc !167
  %and.i.i.i.i117 = and i32 %29, -13
  %or.i.i.i.i118 = or i32 %and.i.i.i.i117, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i118) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  %call1.i.i.i119 = tail call i32 @arm_copy_from_user(ptr noundef %25, ptr noundef %add.ptr23, i32 noundef %sub24) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %29) #11, !srcloc !168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !169
  br label %if.end.i.i123

if.end.i.i123:                                    ; preds = %if.then.i7.i120, %land.lhs.true.i.i113.if.end.i.i123_crit_edge, %if.then.i.i.i108.if.end.i.i123_crit_edge
  %res.0.i.i121 = phi i32 [ %sub24, %if.then.i.i.i108.if.end.i.i123_crit_edge ], [ %call1.i.i.i119, %if.then.i7.i120 ], [ %sub24, %land.lhs.true.i.i113.if.end.i.i123_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i121)
  %tobool4.not.i.i122 = icmp eq i32 %res.0.i.i121, 0
  br i1 %tobool4.not.i.i122, label %if.end.i.i123.if.end29_crit_edge, label %if.then11.i.i126, !prof !173

if.end.i.i123.if.end29_crit_edge:                 ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then11.i.i126:                                 ; preds = %if.end.i.i123
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i124 = sub i32 %sub24, %res.0.i.i121
  %add.ptr.i.i125 = getelementptr i8, ptr %25, i32 %sub.i.i124
  %30 = call ptr @memset(ptr %add.ptr.i.i125, i32 0, i32 %res.0.i.i121)
  br label %cleanup

if.end29:                                         ; preds = %if.end.i.i123.if.end29_crit_edge, %if.end.i.i.if.end29_crit_edge
  %ops = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops, align 4
  %ack = getelementptr inbounds %struct.snd_compr_ops, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ack, align 4
  %tobool30.not = icmp eq ptr %34, null
  br i1 %tobool30.not, label %if.end29.cleanup_crit_edge, label %if.then31

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 %34(ptr noundef %stream, i32 noundef %count) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end29.cleanup_crit_edge, %if.then11.i.i126, %if.then27.i.i106, %land.rhs16.i.i105.cleanup_crit_edge, %if.then11.i.i93, %if.then27.i.i73, %land.rhs16.i.i72.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then31 ], [ %count, %if.end29.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i93 ], [ -14, %if.then27.i.i73 ], [ -14, %land.rhs16.i.i72.cleanup_crit_edge ], [ -14, %if.then11.i.i126 ], [ -14, %if.then27.i.i106 ], [ -14, %land.rhs16.i.i105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

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
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_compr_tstamp(ptr noundef %stream, i32 noundef %arg) unnamed_addr #8 align 64 {
entry:
  %tstamp = alloca %struct.snd_compr_tstamp, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tstamp) #11
  %0 = call ptr @memset(ptr %tstamp, i32 0, i32 20)
  %ops.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %pointer.i = getelementptr inbounds %struct.snd_compr_ops, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %pointer.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pointer.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %call.i = call i32 %4(ptr noundef %stream, ptr noundef nonnull %tstamp) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compr_update_tstamp.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compr_tstamp, %if.then7.i)) #11
          to label %if.then [label %if.then7.i], !srcloc !166

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %tstamp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tstamp, align 4
  %copied_total.i = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %7 = ptrtoint ptr %copied_total.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %copied_total.i, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compr_update_tstamp.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 173, i32 noundef %6, i32 noundef %8) #11
  br label %if.then

if.then:                                          ; preds = %if.then7.i, %if.end.i
  %direction.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 5
  %9 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  %copied_total10.i = getelementptr inbounds %struct.snd_compr_tstamp, ptr %tstamp, i32 0, i32 1
  %11 = ptrtoint ptr %copied_total10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %copied_total10.i, align 4
  %conv.i = zext i32 %12 to i64
  %runtime.i = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %13 = ptrtoint ptr %runtime.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %runtime.i, align 4
  %total_bytes_transferred.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %14, i32 0, i32 7
  %total_bytes_available.i = getelementptr inbounds %struct.snd_compr_runtime, ptr %14, i32 0, i32 6
  %total_bytes_transferred.sink.i = select i1 %cmp.i, ptr %total_bytes_transferred.i, ptr %total_bytes_available.i
  %15 = ptrtoint ptr %total_bytes_transferred.sink.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv.i, ptr %total_bytes_transferred.sink.i, align 8
  %16 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.if.end_crit_edge, label %if.end.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %16, i32 20, i32 -1226833920) #16, !srcloc !171
  %asmresult.i.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.if.end_crit_edge

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %tstamp, i32 noundef 20) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %16, ptr noundef nonnull %tstamp, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %if.end

if.end:                                           ; preds = %copy_to_user.exit, %if.end.i.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ -524, %entry.if.end_crit_edge ], [ -14, %if.then.if.end_crit_edge ], [ -14, %if.end.i.i.if.end_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tstamp) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_compress_wait_for_drain(ptr nocapture noundef readonly %stream) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 2
  %0 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %1, align 8
  %device = getelementptr inbounds %struct.snd_compr_stream, ptr %stream, i32 0, i32 3
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %4, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %lock) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 860) #11
  %5 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %runtime, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %8)
  %cmp.not = icmp eq i32 %8, 5
  br i1 %cmp.not, label %if.then, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %10 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %runtime, align 4
  %sleep81 = getelementptr inbounds %struct.snd_compr_runtime, ptr %11, i32 0, i32 8
  %call82 = call i32 @prepare_to_wait_event(ptr noundef %sleep81, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %12 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %runtime, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp10.not83 = icmp eq i32 %15, 5
  br i1 %cmp10.not83, label %if.then.if.end_crit_edge, label %if.then.if.end16.thread_crit_edge

if.then.if.end16.thread_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call84 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call82, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool.not = icmp eq i32 %call84, 0
  br i1 %tobool.not, label %cleanup, label %if.end16

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %16 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime, align 4
  %sleep = getelementptr inbounds %struct.snd_compr_runtime, ptr %17, i32 0, i32 8
  %call = call i32 @prepare_to_wait_event(ptr noundef %sleep, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %18 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %runtime, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %cmp10.not = icmp eq i32 %21, 5
  br i1 %cmp10.not, label %cleanup.if.end_crit_edge, label %cleanup.if.end16.thread_crit_edge

cleanup.if.end16.thread_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end16.thread:                                  ; preds = %cleanup.if.end16.thread_crit_edge, %if.then.if.end16.thread_crit_edge
  %22 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %runtime, align 4
  %sleep15 = getelementptr inbounds %struct.snd_compr_runtime, ptr %23, i32 0, i32 8
  call void @finish_wait(ptr noundef %sleep15, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end49

if.end16:                                         ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call84)
  %cond = icmp eq i32 %call84, -512
  br i1 %cond, label %do.body20, label %do.body32

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compress_wait_for_drain, %if.then26)) #11
          to label %if.end49 [label %if.then26], !srcloc !166

if.then26:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.48, i32 noundef 862) #11
  br label %if.end49

do.body32:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_compress_wait_for_drain, %if.then44)) #11
          to label %if.end49 [label %if.then44], !srcloc !166

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.48, i32 noundef 864, i32 noundef %call84) #11
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %do.body32, %if.then26, %do.body20, %if.end16.thread, %entry.if.end49_crit_edge
  %__ret.077 = phi i32 [ %call84, %if.then44 ], [ -512, %if.then26 ], [ -512, %do.body20 ], [ %call84, %do.body32 ], [ 0, %entry.if.end49_crit_edge ], [ 0, %if.end16.thread ]
  %24 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %runtime, align 4
  %sleep51 = getelementptr inbounds %struct.snd_compr_runtime, ptr %25, i32 0, i32 8
  call void @__wake_up(ptr noundef %sleep51, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %lock53 = getelementptr inbounds %struct.snd_compr, ptr %27, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %lock53, i32 noundef 0) #11
  ret i32 %__ret.077
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @error_delayed_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %device = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %lock = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %ops = getelementptr i8, ptr %work, i32 -12
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %trigger = getelementptr inbounds %struct.snd_compr_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %trigger to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trigger, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 0) #11
  %runtime = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime, align 4
  %sleep = getelementptr inbounds %struct.snd_compr_runtime, ptr %7, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %sleep, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %lock2 = getelementptr inbounds %struct.snd_compr, ptr %9, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %lock2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_compress_proc_info_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %card = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.68, i32 noundef %7) #11
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %device = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %9, ptr noundef nonnull @.str.69, i32 noundef %11) #11
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  %direction = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  %cond = select i1 %cmp, ptr @.str.71, ptr @.str.72
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %13, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond) #11
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %id = getelementptr inbounds %struct.snd_compr, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef nonnull @.str.73, ptr noundef %id) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !91, !93, !94, !95, !96, !98, !99, !100, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !138, !140, !141, !143, !145, !147, !149, !151, !152, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/compress_offload.c", i32 494, i32 6}
!2 = !{ptr @__ksymtab_snd_compr_malloc_pages, !3, !"__ksymtab_snd_compr_malloc_pages", i1 false, i1 false}
!3 = !{!"../sound/core/compress_offload.c", i32 510, i32 1}
!4 = !{ptr @__ksymtab_snd_compr_free_pages, !5, !"__ksymtab_snd_compr_free_pages", i1 false, i1 false}
!5 = !{!"../sound/core/compress_offload.c", i32 530, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/core/compress_offload.c", i32 830, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @snd_compr_stop_error.__UNIQUE_ID_ddebug243, !7, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab_snd_compr_stop_error, !13, !"__ksymtab_snd_compr_stop_error", i1 false, i1 false}
!13 = !{!"../sound/core/compress_offload.c", i32 836, i32 1}
!14 = !{ptr @snd_compress_new.ops, !15, !"ops", i1 false, i1 false}
!15 = !{!"../sound/core/compress_offload.c", i32 1170, i32 37}
!16 = !{ptr @snd_compress_new.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/core/compress_offload.c", i32 1180, i32 2}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/compress_offload.c", i32 1185, i32 28}
!21 = !{ptr @__ksymtab_snd_compress_new, !22, !"__ksymtab_snd_compress_new", i1 false, i1 false}
!22 = !{!"../sound/core/compress_offload.c", i32 1193, i32 1}
!23 = !{ptr @__UNIQUE_ID_description249, !24, !"__UNIQUE_ID_description249", i1 false, i1 false}
!24 = !{!"../sound/core/compress_offload.c", i32 1195, i32 1}
!25 = !{ptr @__UNIQUE_ID_author250, !26, !"__UNIQUE_ID_author250", i1 false, i1 false}
!26 = !{!"../sound/core/compress_offload.c", i32 1196, i32 1}
!27 = !{ptr @__UNIQUE_ID_file251, !28, !"__UNIQUE_ID_file251", i1 false, i1 false}
!28 = !{!"../sound/core/compress_offload.c", i32 1197, i32 1}
!29 = !{ptr @__UNIQUE_ID_license252, !28, !"__UNIQUE_ID_license252", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/core/compress_offload.c", i32 1063, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @snd_compress_dev_register.__UNIQUE_ID_ddebug248, !31, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/core/compress_offload.c", i32 1070, i32 3}
!37 = !{ptr @snd_compress_dev_register._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @snd_compress_dev_register._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @snd_compr_file_ops, !40, !"snd_compr_file_ops", i1 false, i1 false}
!40 = !{!"../sound/core/compress_offload.c", i32 1040, i32 37}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/core/compress_offload.c", i32 361, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @snd_compr_read.__UNIQUE_ID_ddebug241, !42, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!45 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/core/compress_offload.c", i32 191, i32 3}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug233, !47, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!50 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/core/compress_offload.c", i32 194, i32 2}
!53 = !{ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug234, !52, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!54 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/core/compress_offload.c", i32 200, i32 4}
!57 = !{ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug235, !56, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/core/compress_offload.c", i32 203, i32 4}
!61 = !{ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug236, !60, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!62 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/core/compress_offload.c", i32 213, i32 2}
!65 = !{ptr @snd_compr_calc_avail.__UNIQUE_ID_ddebug237, !64, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!66 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/core/compress_offload.c", i32 172, i32 2}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @snd_compr_update_tstamp.__UNIQUE_ID_ddebug232, !68, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!71 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/core/compress_offload.c", i32 304, i32 2}
!74 = !{ptr @snd_compr_write.__UNIQUE_ID_ddebug239, !73, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/core/compress_offload.c", i32 322, i32 3}
!77 = !{ptr @snd_compr_write.__UNIQUE_ID_ddebug240, !76, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!78 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/core/compress_offload.c", i32 261, i32 2}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @snd_compr_write_data.__UNIQUE_ID_ddebug238, !80, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!83 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/core/compress_offload.c", i32 419, i32 2}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @snd_compr_poll.__UNIQUE_ID_ddebug242, !92, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!95 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/core/compress_offload.c", i32 549, i32 5}
!98 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @snd_compr_allocate_buffer._entry, !97, !"_entry", i1 false, i1 false}
!102 = !{ptr @snd_compr_allocate_buffer._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../include/sound/compress_driver.h", i32 198, i32 6}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/core/compress_offload.c", i32 891, i32 3}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @snd_compr_drain.__UNIQUE_ID_ddebug246, !106, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!109 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/core/compress_offload.c", i32 862, i32 3}
!112 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug244, !111, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!114 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/core/compress_offload.c", i32 864, i32 3}
!117 = !{ptr @snd_compress_wait_for_drain.__UNIQUE_ID_ddebug245, !116, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!118 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/core/compress_offload.c", i32 952, i32 3}
!121 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @snd_compr_partial_drain.__UNIQUE_ID_ddebug247, !120, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!123 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/core/compress_offload.c", i32 98, i32 3}
!126 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @snd_compr_open._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @snd_compr_open._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/core/compress_offload.c", i32 103, i32 3}
!131 = !{ptr @snd_compr_open._entry.58, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @snd_compr_open._entry_ptr.60, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @snd_compr_open.__key, !134, !"__key", i1 false, i1 false}
!134 = !{!"../sound/core/compress_offload.c", i32 114, i32 2}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @snd_compr_open.__key.62, !134, !"__key", i1 false, i1 false}
!137 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @snd_compr_open.__key.64, !139, !"__key", i1 false, i1 false}
!139 = !{!"../sound/core/compress_offload.c", i32 127, i32 2}
!140 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/core/compress_offload.c", i32 1105, i32 16}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/core/compress_offload.c", i32 1113, i32 50}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/core/compress_offload.c", i32 1092, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/core/compress_offload.c", i32 1093, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/core/compress_offload.c", i32 1094, i32 2}
!151 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/core/compress_offload.c", i32 1097, i32 2}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i64 2148511461, i64 2148511466, i64 2148511479, i64 2148511523, i64 2148511557, i64 2148511578}
!167 = !{i64 4693359}
!168 = !{i64 4693556}
!169 = !{i64 2152178789}
!170 = !{i64 2154167937, i64 2154168217, i64 2154168551, i64 2154168885}
!171 = !{i64 2152198485, i64 2152198510}
!172 = !{i64 2152197804, i64 2152197829}
!173 = !{!"branch_weights", i32 2000, i32 1}
!174 = !{i8 0, i8 2}
