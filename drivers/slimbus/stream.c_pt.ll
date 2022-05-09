; ModuleID = '/llk/IR_all_yes/drivers/slimbus/stream.c_pt.bc'
source_filename = "../drivers/slimbus/stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+slim_stream_allocate\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_allocate\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_allocate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_allocate\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_allocate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_stream_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_prepare\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_stream_enable\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_enable\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_enable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_enable\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_stream_disable\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_disable\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_disable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_disable\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_stream_unprepare\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_unprepare\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_unprepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_unprepare\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_unprepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_stream_free\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_stream_free\09\09\09\09"
module asm "\09.long\09__crc_slim_stream_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_stream_free:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_stream_free\22\09\09\09\09\09"
module asm "__kstrtabns_slim_stream_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.slim_msg_txn = type { i8, i8, i8, i8, i16, i8, i8, ptr, ptr }
%struct.segdist_code = type { i32, i32, i32, i32 }
%struct.slim_stream_runtime = type { ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.slim_device = type { %struct.device, %struct.slim_eaddr, ptr, i32, i8, i8, %struct.list_head, %struct.spinlock }
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
%struct.slim_eaddr = type { i8, i8, i16, i16 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.slim_val_inf = type { i16, i8, ptr, ptr, ptr }
%struct.slim_stream_config = type { i32, i32, i32, ptr, i32, i32 }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.slim_framer = type { %struct.device, %struct.slim_eaddr, i32, i32 }
%struct.slim_port = type { i32, i32, i32, %struct.slim_channel }
%struct.slim_channel = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slim-%s\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_slim_stream_allocate = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_allocate = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_allocate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_allocate to i32), ptr @__kstrtab_slim_stream_allocate, ptr @__kstrtabns_slim_stream_allocate }, section "___ksymtab_gpl+slim_stream_allocate", align 4
@slim_stream_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stream already Prepared\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slim_stream_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/slimbus/stream.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@slim_stream_prepare._entry_ptr = internal global ptr @slim_stream_prepare._entry, section ".printk_index", align 4
@__kstrtab_slim_stream_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_prepare to i32), ptr @__kstrtab_slim_stream_prepare, ptr @__kstrtabns_slim_stream_prepare }, section "___ksymtab_gpl+slim_stream_prepare", align 4
@__kstrtab_slim_stream_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_enable to i32), ptr @__kstrtab_slim_stream_enable, ptr @__kstrtabns_slim_stream_enable }, section "___ksymtab_gpl+slim_stream_enable", align 4
@__const.slim_stream_disable.txn = private unnamed_addr constant %struct.slim_msg_txn { i8 3, i8 0, i8 64, i8 3, i16 0, i8 0, i8 -1, ptr null, ptr null }, align 4
@__kstrtab_slim_stream_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_disable to i32), ptr @__kstrtab_slim_stream_disable, ptr @__kstrtabns_slim_stream_disable }, section "___ksymtab_gpl+slim_stream_disable", align 4
@__kstrtab_slim_stream_unprepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_unprepare = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_unprepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_unprepare to i32), ptr @__kstrtab_slim_stream_unprepare, ptr @__kstrtabns_slim_stream_unprepare }, section "___ksymtab_gpl+slim_stream_unprepare", align 4
@__kstrtab_slim_stream_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_stream_free = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_stream_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_stream_free to i32), ptr @__kstrtab_slim_stream_free, ptr @__kstrtabns_slim_stream_free }, section "___ksymtab_gpl+slim_stream_free", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@segdist_codes = internal constant { [19 x %struct.segdist_code], [80 x i8] } { [19 x %struct.segdist_code] [%struct.segdist_code { i32 1, i32 1536, i32 512, i32 3583 }, %struct.segdist_code { i32 2, i32 768, i32 256, i32 3327 }, %struct.segdist_code { i32 4, i32 384, i32 128, i32 3199 }, %struct.segdist_code { i32 8, i32 192, i32 64, i32 3135 }, %struct.segdist_code { i32 16, i32 96, i32 32, i32 3103 }, %struct.segdist_code { i32 32, i32 48, i32 16, i32 3087 }, %struct.segdist_code { i32 64, i32 24, i32 8, i32 3079 }, %struct.segdist_code { i32 128, i32 12, i32 4, i32 3075 }, %struct.segdist_code { i32 256, i32 6, i32 2, i32 3073 }, %struct.segdist_code { i32 512, i32 3, i32 1, i32 3072 }, %struct.segdist_code { i32 3, i32 512, i32 3584, i32 511 }, %struct.segdist_code { i32 6, i32 256, i32 3328, i32 255 }, %struct.segdist_code { i32 12, i32 128, i32 3200, i32 127 }, %struct.segdist_code { i32 24, i32 64, i32 3136, i32 63 }, %struct.segdist_code { i32 48, i32 32, i32 3104, i32 31 }, %struct.segdist_code { i32 96, i32 16, i32 3088, i32 15 }, %struct.segdist_code { i32 192, i32 8, i32 3080, i32 7 }, %struct.segdist_code { i32 364, i32 4, i32 3076, i32 3 }, %struct.segdist_code { i32 768, i32 2, i32 3074, i32 1 }], [80 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [25 x i64] [i64 23, i64 32, i64 0, i64 4000, i64 8000, i64 12000, i64 16000, i64 24000, i64 32000, i64 48000, i64 64000, i64 96000, i64 110250, i64 128000, i64 176400, i64 192000, i64 220500, i64 256000, i64 352800, i64 384000, i64 441000, i64 512000, i64 705600, i64 768000, i64 882000]
@__sancov_gen_cov_switch_values.6 = internal global [21 x i64] [i64 19, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 8, i64 12, i64 16, i64 24, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 364, i64 512, i64 768]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 108, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 210, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"segdist_codes\00", align 1
@___asan_gen_.29 = private constant [28 x i8] c"../drivers/slimbus/stream.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 29, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_slim_stream_allocate, ptr @__ksymtab_slim_stream_disable, ptr @__ksymtab_slim_stream_enable, ptr @__ksymtab_slim_stream_free, ptr @__ksymtab_slim_stream_prepare, ptr @__ksymtab_slim_stream_unprepare, ptr @slim_stream_prepare._entry, ptr @slim_stream_prepare._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @segdist_codes], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_stream_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @segdist_codes to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @slim_stream_allocate(ptr noundef %dev, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 44) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %name) #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call7.i.i, align 8
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.slim_stream_runtime, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev9, align 4
  %stream_list_lock = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %stream_list_lock) #7
  %node = getelementptr inbounds %struct.slim_stream_runtime, ptr %call7.i.i, i32 0, i32 9
  %stream_list = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.slim_device, ptr %dev, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %4, ptr noundef %stream_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.list_add_tail.exit_crit_edge

if.end8.list_add_tail.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %node, ptr %prev.i, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %stream_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %call7.i.i, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 8
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end8.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stream_list_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ inttoptr (i32 -12 to ptr), %if.then6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_stream_prepare(ptr nocapture noundef %rt, ptr noundef %cfg) #0 align 64 {
entry:
  %wbuf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.slim_val_inf, align 4
  %txn.i = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 8
  %ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 8
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_mask = getelementptr inbounds %struct.slim_stream_config, ptr %cfg, i32 0, i32 4
  %6 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_mask, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %7) #7
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 36) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !35

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ports, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #12
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %ports, align 4
  %tobool320.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool320.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end322

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end322:                                        ; preds = %if.end7.i.i
  %num_ports323 = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 7
  %13 = ptrtoint ptr %num_ports323 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call.i, ptr %num_ports323, align 4
  %14 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg, align 4
  %rate324 = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 4
  %16 = ptrtoint ptr %rate324 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rate324, align 4
  %bps = getelementptr inbounds %struct.slim_stream_config, ptr %cfg, i32 0, i32 1
  %17 = ptrtoint ptr %bps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bps, align 4
  %bps325 = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 5
  %19 = ptrtoint ptr %bps325 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %bps325, align 4
  %direction = getelementptr inbounds %struct.slim_stream_config, ptr %cfg, i32 0, i32 5
  %20 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %direction, align 4
  %direction326 = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 2
  %22 = ptrtoint ptr %direction326 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %direction326, align 4
  %23 = load i32, ptr %cfg, align 4
  %a_framer = getelementptr inbounds %struct.slim_controller, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %a_framer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a_framer, align 4
  %superfreq = getelementptr inbounds %struct.slim_framer, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %superfreq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %superfreq, align 4
  %rem = urem i32 %23, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool328.not = icmp eq i32 %rem, 0
  br i1 %tobool328.not, label %if.else335, label %if.then329

if.then329:                                       ; preds = %if.end322
  %28 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  %prot = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 3
  br i1 %cmp, label %if.then332, label %if.else

if.then332:                                       ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %prot, align 4
  br label %if.end337

if.else:                                          ; preds = %if.then329
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %prot to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %prot, align 4
  br label %if.end337

if.else335:                                       ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #9
  %prot336 = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 3
  %32 = ptrtoint ptr %prot336 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %prot336, align 4
  br label %if.end337

if.end337:                                        ; preds = %if.else335, %if.else, %if.then332
  %33 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cfg, align 4
  %35 = ptrtoint ptr %a_framer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a_framer, align 4
  %superfreq340 = getelementptr inbounds %struct.slim_framer, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %superfreq340 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %superfreq340, align 4
  %div = udiv i32 %34, %38
  %ratem = getelementptr inbounds %struct.slim_stream_runtime, ptr %rt, i32 0, i32 6
  %39 = ptrtoint ptr %ratem to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div, ptr %ratem, align 4
  %call342 = tail call i32 @_find_next_bit_be(ptr noundef %port_mask, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call342)
  %cmp343453 = icmp slt i32 %call342, 32
  br i1 %cmp343453, label %for.body.lr.ph, label %if.end337.cleanup_crit_edge

if.end337.cleanup_crit_edge:                      ; preds = %if.end337
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end337
  %chs = getelementptr inbounds %struct.slim_stream_config, ptr %cfg, i32 0, i32 3
  %rbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %wbuf1.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %40 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 1
  %41 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 2
  %42 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 3
  %43 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 6
  %44 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 7
  %45 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 8
  %46 = getelementptr inbounds [2 x i8], ptr %wbuf.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %slim_connect_port_channel.exit.for.body_crit_edge, %for.body.lr.ph
  %port_id.0455 = phi i32 [ %call342, %for.body.lr.ph ], [ %call366, %slim_connect_port_channel.exit.for.body_crit_edge ]
  %i.0454 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %slim_connect_port_channel.exit.for.body_crit_edge ]
  %47 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.slim_port, ptr %48, i32 %i.0454
  %state = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 2
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %state, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %port_id.0455, ptr %arrayidx, align 4
  %51 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cfg, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %for.inc.23.i [
    i32 0, label %for.body.slim_get_prate_code.exit_crit_edge
    i32 12000, label %cleanup.fold.split.i
    i32 24000, label %cleanup.fold.split6.i
    i32 48000, label %cleanup.fold.split7.i
    i32 96000, label %cleanup.fold.split8.i
    i32 192000, label %cleanup.fold.split9.i
    i32 384000, label %cleanup.fold.split10.i
    i32 768000, label %cleanup.fold.split11.i
    i32 110250, label %cleanup.fold.split12.i
    i32 220500, label %cleanup.fold.split13.i
    i32 441000, label %cleanup.fold.split14.i
    i32 882000, label %cleanup.fold.split15.i
    i32 176400, label %cleanup.fold.split16.i
    i32 352800, label %cleanup.fold.split17.i
    i32 705600, label %cleanup.fold.split18.i
    i32 4000, label %cleanup.fold.split19.i
    i32 8000, label %cleanup.fold.split20.i
    i32 16000, label %cleanup.fold.split21.i
    i32 32000, label %cleanup.fold.split22.i
    i32 64000, label %cleanup.fold.split23.i
    i32 128000, label %cleanup.fold.split24.i
    i32 256000, label %cleanup.fold.split25.i
    i32 512000, label %cleanup.fold.split26.i
  ]

for.body.slim_get_prate_code.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

for.inc.23.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split.i:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split6.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split7.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split8.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split9.i:                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split10.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split11.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split12.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split13.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split14.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split15.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split16.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split17.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split18.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split19.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split20.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split21.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split22.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split23.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split24.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split25.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

cleanup.fold.split26.i:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_get_prate_code.exit

slim_get_prate_code.exit:                         ; preds = %cleanup.fold.split26.i, %cleanup.fold.split25.i, %cleanup.fold.split24.i, %cleanup.fold.split23.i, %cleanup.fold.split22.i, %cleanup.fold.split21.i, %cleanup.fold.split20.i, %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split6.i, %cleanup.fold.split.i, %for.inc.23.i, %for.body.slim_get_prate_code.exit_crit_edge
  %retval.0.i = phi i32 [ %52, %for.body.slim_get_prate_code.exit_crit_edge ], [ -22, %for.inc.23.i ], [ 1, %cleanup.fold.split.i ], [ 2, %cleanup.fold.split6.i ], [ 3, %cleanup.fold.split7.i ], [ 4, %cleanup.fold.split8.i ], [ 5, %cleanup.fold.split9.i ], [ 6, %cleanup.fold.split10.i ], [ 7, %cleanup.fold.split11.i ], [ 9, %cleanup.fold.split12.i ], [ 10, %cleanup.fold.split13.i ], [ 11, %cleanup.fold.split14.i ], [ 12, %cleanup.fold.split15.i ], [ 13, %cleanup.fold.split16.i ], [ 14, %cleanup.fold.split17.i ], [ 15, %cleanup.fold.split18.i ], [ 16, %cleanup.fold.split19.i ], [ 17, %cleanup.fold.split20.i ], [ 18, %cleanup.fold.split21.i ], [ 19, %cleanup.fold.split22.i ], [ 20, %cleanup.fold.split23.i ], [ 21, %cleanup.fold.split24.i ], [ 22, %cleanup.fold.split25.i ], [ 23, %cleanup.fold.split26.i ]
  %ch = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 3
  %prrate = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 3, i32 1
  %54 = ptrtoint ptr %prrate to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i, ptr %prrate, align 4
  %55 = ptrtoint ptr %chs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chs, align 4
  %arrayidx348 = getelementptr i32, ptr %56, i32 %i.0454
  %57 = ptrtoint ptr %arrayidx348 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx348, align 4
  %59 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %ch, align 4
  %data_fmt = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 3, i32 3
  %60 = ptrtoint ptr %data_fmt to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %data_fmt, align 4
  %aux_fmt = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 3, i32 4
  %61 = ptrtoint ptr %aux_fmt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %aux_fmt, align 4
  %state354 = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 3, i32 5
  %62 = ptrtoint ptr %state354 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %state354, align 4
  %63 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp356 = icmp ne i32 %64, 0
  %spec.select = zext i1 %cmp356 to i32
  %65 = getelementptr %struct.slim_port, ptr %48, i32 %i.0454, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select, ptr %65, align 4
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wbuf.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #7
  %69 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 767, ptr %msg.i, align 4
  %70 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %rbuf.i, align 4
  %71 = ptrtoint ptr %wbuf1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %wbuf.i, ptr %wbuf1.i, align 4
  %72 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %comp.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i) #7
  %73 = ptrtoint ptr %txn.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 6, ptr %txn.i, align 4
  %74 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %40, align 1
  %75 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 16, ptr %41, align 2
  %laddr.i = getelementptr inbounds %struct.slim_device, ptr %68, i32 0, i32 4
  %76 = ptrtoint ptr %42 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 4)
  store i32 0, ptr %42, align 1
  %77 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %laddr.i, align 8
  %79 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %43, align 1
  %80 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i, ptr %44, align 4
  %81 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %45, align 4
  %82 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp.i = icmp eq i32 %83, 0
  br i1 %cmp.i, label %if.then.i, label %slim_get_prate_code.exit.slim_connect_port_channel.exit_crit_edge

slim_get_prate_code.exit.slim_connect_port_channel.exit_crit_edge: ; preds = %slim_get_prate_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_connect_port_channel.exit

if.then.i:                                        ; preds = %slim_get_prate_code.exit
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 17, ptr %41, align 2
  br label %slim_connect_port_channel.exit

slim_connect_port_channel.exit:                   ; preds = %if.then.i, %slim_get_prate_code.exit.slim_connect_port_channel.exit_crit_edge
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %86 to i8
  %87 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv.i, ptr %wbuf.i, align 1
  %88 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ch, align 4
  %conv8.i = trunc i32 %89 to i8
  %90 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv8.i, ptr %46, align 1
  %91 = ptrtoint ptr %state354 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %state354, align 4
  %92 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %state, align 4
  %ctrl.i = getelementptr inbounds %struct.slim_device, ptr %68, i32 0, i32 2
  %93 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ctrl.i, align 8
  %call.i447 = call i32 @slim_do_transfer(ptr noundef %94, ptr noundef nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wbuf.i) #7
  %inc = add i32 %i.0454, 1
  %add365 = add nsw i32 %port_id.0455, 1
  %call366 = call i32 @_find_next_bit_be(ptr noundef %port_mask, i32 noundef 32, i32 noundef %add365) #7
  %cmp343 = icmp slt i32 %call366, 32
  br i1 %cmp343, label %slim_connect_port_channel.exit.for.body_crit_edge, label %slim_connect_port_channel.exit.cleanup_crit_edge

slim_connect_port_channel.exit.cleanup_crit_edge: ; preds = %slim_connect_port_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

slim_connect_port_channel.exit.for.body_crit_edge: ; preds = %slim_connect_port_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %slim_connect_port_channel.exit.cleanup_crit_edge, %if.end337.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end337.cleanup_crit_edge ], [ 0, %slim_connect_port_channel.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_stream_enable(ptr noundef %stream) #0 align 64 {
entry:
  %wbuf.i81 = alloca [1 x i8], align 1
  %msg.i82 = alloca %struct.slim_val_inf, align 4
  %txn.i83 = alloca %struct.slim_msg_txn, align 4
  %wbuf.i64 = alloca [4 x i8], align 1
  %msg.i65 = alloca %struct.slim_val_inf, align 4
  %txn.i66 = alloca %struct.slim_msg_txn, align 4
  %wbuf.i = alloca [4 x i8], align 1
  %msg.i = alloca %struct.slim_val_inf, align 4
  %txn.i = alloca %struct.slim_msg_txn, align 4
  %txn = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #7
  %0 = call ptr @memcpy(ptr %txn, ptr @__const.slim_stream_disable.txn, i32 16)
  %dev = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl1, align 8
  %enable_stream = getelementptr inbounds %struct.slim_controller, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %enable_stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable_stream, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end5, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 %6(ptr noundef %stream) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %for.cond.preheader, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then
  %num_ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 7
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp95 = icmp sgt i32 %8, 0
  br i1 %cmp95, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports, align 4
  %state = getelementptr %struct.slim_port, ptr %10, i32 %i.096, i32 3, i32 5
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %state, align 4
  %inc = add nuw nsw i32 %i.096, 1
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end5:                                          ; preds = %entry
  %call6 = call i32 @slim_do_transfer(ptr noundef %4, ptr noundef nonnull %txn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond10.preheader, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond10.preheader:                             ; preds = %if.end5
  %num_ports11 = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 7
  %14 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_ports11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1297 = icmp sgt i32 %15, 0
  br i1 %cmp1297, label %for.body13.lr.ph, label %for.cond10.preheader.for.end32_crit_edge

for.cond10.preheader.for.end32_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %ports14 = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  %16 = getelementptr inbounds i8, ptr %wbuf.i, i32 3
  %rbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %wbuf1.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %17 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 6
  %21 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 7
  %22 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 8
  %ratem.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 6
  %23 = getelementptr inbounds [4 x i8], ptr %wbuf.i, i32 0, i32 2
  %24 = getelementptr inbounds [4 x i8], ptr %wbuf.i, i32 0, i32 1
  %prot.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 3
  %bps.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 5
  %25 = getelementptr inbounds [4 x i8], ptr %wbuf.i64, i32 0, i32 1
  %26 = getelementptr inbounds i8, ptr %wbuf.i64, i32 2
  %rbuf.i69 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i65, i32 0, i32 2
  %wbuf1.i70 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i65, i32 0, i32 3
  %comp.i71 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i65, i32 0, i32 4
  %27 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 1
  %28 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 2
  %29 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 3
  %30 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 6
  %31 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 7
  %32 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i66, i32 0, i32 8
  %33 = getelementptr inbounds [4 x i8], ptr %wbuf.i64, i32 0, i32 3
  br label %for.body13

for.cond21.preheader:                             ; preds = %slim_define_channel_content.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp2399 = icmp sgt i32 %115, 0
  br i1 %cmp2399, label %for.body24.lr.ph, label %for.cond21.preheader.for.end32_crit_edge

for.cond21.preheader.for.end32_crit_edge:         ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32

for.body24.lr.ph:                                 ; preds = %for.cond21.preheader
  %ports26 = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  %rbuf.i86 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i82, i32 0, i32 2
  %wbuf1.i87 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i82, i32 0, i32 3
  %comp.i88 = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i82, i32 0, i32 4
  %34 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 1
  %35 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 2
  %36 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 3
  %37 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 6
  %38 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 7
  %39 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i83, i32 0, i32 8
  br label %for.body24

for.body13:                                       ; preds = %slim_define_channel_content.exit.for.body13_crit_edge, %for.body13.lr.ph
  %i.198 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc19, %slim_define_channel_content.exit.for.body13_crit_edge ]
  %40 = ptrtoint ptr %ports14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ports14, align 4
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wbuf.i) #7
  %44 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -1, ptr %16, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #7
  %45 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1279, ptr %msg.i, align 4
  %46 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %rbuf.i, align 4
  %47 = ptrtoint ptr %wbuf1.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %wbuf.i, ptr %wbuf1.i, align 4
  %48 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %comp.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i) #7
  %49 = ptrtoint ptr %txn.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %txn.i, align 4
  %50 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %17, align 1
  %51 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 80, ptr %18, align 2
  %laddr.i = getelementptr inbounds %struct.slim_device, ptr %43, i32 0, i32 4
  %52 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 0, ptr %19, align 1
  %53 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %laddr.i, align 8
  %55 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %20, align 1
  %56 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i, ptr %21, align 4
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %22, align 4
  %58 = ptrtoint ptr %ratem.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ratem.i, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %59, label %for.body13.slim_define_channel.exit_crit_edge [
    i32 1, label %for.body13.if.then.i.i_crit_edge
    i32 2, label %if.then.fold.split.i.i
    i32 4, label %if.then.fold.split10.i.i
    i32 8, label %if.then.fold.split11.i.i
    i32 16, label %if.then.fold.split12.i.i
    i32 32, label %if.then.fold.split13.i.i
    i32 64, label %if.then.fold.split14.i.i
    i32 128, label %if.then.fold.split15.i.i
    i32 256, label %if.then.fold.split16.i.i
    i32 512, label %if.then.fold.split17.i.i
    i32 3, label %if.then.fold.split18.i.i
    i32 6, label %if.then.fold.split19.i.i
    i32 12, label %if.then.fold.split20.i.i
    i32 24, label %if.then.fold.split21.i.i
    i32 48, label %if.then.fold.split22.i.i
    i32 96, label %if.then.fold.split23.i.i
    i32 192, label %if.then.fold.split24.i.i
    i32 364, label %if.then.fold.split25.i.i
    i32 768, label %if.then.fold.split26.i.i
  ]

for.body13.if.then.i.i_crit_edge:                 ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.body13.slim_define_channel.exit_crit_edge:    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_define_channel.exit

if.then.fold.split.i.i:                           ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split10.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split11.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split12.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split13.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split14.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split15.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split16.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split17.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split18.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split19.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split20.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split21.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split22.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split23.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split24.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split25.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.fold.split26.i.i:                         ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.fold.split26.i.i, %if.then.fold.split25.i.i, %if.then.fold.split24.i.i, %if.then.fold.split23.i.i, %if.then.fold.split22.i.i, %if.then.fold.split21.i.i, %if.then.fold.split20.i.i, %if.then.fold.split19.i.i, %if.then.fold.split18.i.i, %if.then.fold.split17.i.i, %if.then.fold.split16.i.i, %if.then.fold.split15.i.i, %if.then.fold.split14.i.i, %if.then.fold.split13.i.i, %if.then.fold.split12.i.i, %if.then.fold.split11.i.i, %if.then.fold.split10.i.i, %if.then.fold.split.i.i, %for.body13.if.then.i.i_crit_edge
  %i.08.lcssa.i.i = phi i32 [ 0, %for.body13.if.then.i.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split10.i.i ], [ 3, %if.then.fold.split11.i.i ], [ 4, %if.then.fold.split12.i.i ], [ 5, %if.then.fold.split13.i.i ], [ 6, %if.then.fold.split14.i.i ], [ 7, %if.then.fold.split15.i.i ], [ 8, %if.then.fold.split16.i.i ], [ 9, %if.then.fold.split17.i.i ], [ 10, %if.then.fold.split18.i.i ], [ 11, %if.then.fold.split19.i.i ], [ 12, %if.then.fold.split20.i.i ], [ 13, %if.then.fold.split21.i.i ], [ 14, %if.then.fold.split22.i.i ], [ 15, %if.then.fold.split23.i.i ], [ 16, %if.then.fold.split24.i.i ], [ 17, %if.then.fold.split25.i.i ], [ 18, %if.then.fold.split26.i.i ]
  %segdist_code.i.i = getelementptr [19 x %struct.segdist_code], ptr @segdist_codes, i32 0, i32 %i.08.lcssa.i.i, i32 2
  %61 = ptrtoint ptr %segdist_code.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %segdist_code.i.i, align 4
  br label %slim_define_channel.exit

slim_define_channel.exit:                         ; preds = %if.then.i.i, %for.body13.slim_define_channel.exit_crit_edge
  %retval.0.i.i = phi i32 [ %62, %if.then.i.i ], [ -22, %for.body13.slim_define_channel.exit_crit_edge ]
  %ch.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3
  %seg_dist.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3, i32 2
  %63 = ptrtoint ptr %seg_dist.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %retval.0.i.i, ptr %seg_dist.i, align 4
  %64 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ch.i, align 4
  %conv.i = trunc i32 %65 to i8
  %66 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv.i, ptr %wbuf.i, align 1
  %conv9.i = trunc i32 %retval.0.i.i to i8
  %67 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv9.i, ptr %24, align 1
  %68 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %prot.i, align 4
  %shl.i = shl i32 %69, 4
  %and13.i = lshr i32 %retval.0.i.i, 8
  %70 = and i32 %and13.i, 15
  %or.i = or i32 %shl.i, %70
  %conv14.i = trunc i32 %or.i to i8
  %71 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv14.i, ptr %23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp.i = icmp ne i32 %69, 0
  %72 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bps.i, align 4
  %div2.i = lshr i32 %73, 2
  %conv18.i = trunc i32 %div2.i to i8
  %conv22.i = zext i1 %cmp.i to i8
  %storemerge.i = add i8 %conv18.i, %conv22.i
  %74 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %storemerge.i, ptr %16, align 1
  %state.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3, i32 5
  %75 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %state.i, align 4
  %ctrl.i = getelementptr inbounds %struct.slim_device, ptr %43, i32 0, i32 2
  %76 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl.i, align 8
  %call25.i = call i32 @slim_do_transfer(ptr noundef %77, ptr noundef nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wbuf.i) #7
  %78 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wbuf.i64) #7
  %80 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %80, i32 2)
  store i16 -1, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i65) #7
  %81 = ptrtoint ptr %msg.i65 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1279, ptr %msg.i65, align 4
  %82 = ptrtoint ptr %rbuf.i69 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %rbuf.i69, align 4
  %83 = ptrtoint ptr %wbuf1.i70 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %wbuf.i64, ptr %wbuf1.i70, align 4
  %84 = ptrtoint ptr %comp.i71 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr null, ptr %comp.i71, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i66) #7
  %85 = ptrtoint ptr %txn.i66 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 8, ptr %txn.i66, align 4
  %86 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %27, align 1
  %87 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 81, ptr %28, align 2
  %laddr.i72 = getelementptr inbounds %struct.slim_device, ptr %79, i32 0, i32 4
  %88 = ptrtoint ptr %29 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %29, align 1
  %89 = ptrtoint ptr %laddr.i72 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %laddr.i72, align 8
  %91 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %30, align 1
  %92 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i65, ptr %31, align 4
  %93 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %32, align 4
  %94 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ch.i, align 4
  %conv.i74 = trunc i32 %95 to i8
  %96 = ptrtoint ptr %wbuf.i64 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv.i74, ptr %wbuf.i64, align 1
  %prrate.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3, i32 1
  %97 = ptrtoint ptr %prrate.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %prrate.i, align 4
  %conv7.i = trunc i32 %98 to i8
  %99 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv7.i, ptr %25, align 1
  %100 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %prot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp.not.i = icmp eq i32 %101, 0
  br i1 %cmp.not.i, label %slim_define_channel.exit.slim_define_channel_content.exit_crit_edge, label %if.then.i

slim_define_channel.exit.slim_define_channel_content.exit_crit_edge: ; preds = %slim_define_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_define_channel_content.exit

if.then.i:                                        ; preds = %slim_define_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv12.i = or i8 %conv7.i, -128
  %102 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv12.i, ptr %25, align 1
  br label %slim_define_channel_content.exit

slim_define_channel_content.exit:                 ; preds = %if.then.i, %slim_define_channel.exit.slim_define_channel_content.exit_crit_edge
  %data_fmt.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3, i32 3
  %103 = ptrtoint ptr %data_fmt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data_fmt.i, align 4
  %aux_fmt.i = getelementptr %struct.slim_port, ptr %41, i32 %i.198, i32 3, i32 4
  %105 = ptrtoint ptr %aux_fmt.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %aux_fmt.i, align 4
  %shl.i76 = shl i32 %106, 4
  %or15.i = or i32 %shl.i76, %104
  %conv16.i = trunc i32 %or15.i to i8
  %107 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv16.i, ptr %26, align 1
  %108 = ptrtoint ptr %bps.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %bps.i, align 4
  %div1.i = lshr i32 %109, 2
  %conv18.i78 = trunc i32 %div1.i to i8
  %110 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv18.i78, ptr %33, align 1
  %111 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 4, ptr %state.i, align 4
  %ctrl.i80 = getelementptr inbounds %struct.slim_device, ptr %79, i32 0, i32 2
  %112 = ptrtoint ptr %ctrl.i80 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ctrl.i80, align 8
  %call.i = call i32 @slim_do_transfer(ptr noundef %113, ptr noundef nonnull %txn.i66) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i66) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i65) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wbuf.i64) #7
  %inc19 = add nuw nsw i32 %i.198, 1
  %114 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_ports11, align 4
  %cmp12 = icmp slt i32 %inc19, %115
  br i1 %cmp12, label %slim_define_channel_content.exit.for.body13_crit_edge, label %for.cond21.preheader

slim_define_channel_content.exit.for.body13_crit_edge: ; preds = %slim_define_channel_content.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body13

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %i.2100 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc31, %for.body24.for.body24_crit_edge ]
  %116 = ptrtoint ptr %ports26 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ports26, align 4
  %118 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf.i81) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i82) #7
  %120 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 511, ptr %msg.i82, align 4
  %121 = ptrtoint ptr %rbuf.i86 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %rbuf.i86, align 4
  %122 = ptrtoint ptr %comp.i88 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr null, ptr %comp.i88, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i83) #7
  %123 = ptrtoint ptr %txn.i83 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 5, ptr %txn.i83, align 4
  %124 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %34, align 1
  %125 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 84, ptr %35, align 2
  %laddr.i89 = getelementptr inbounds %struct.slim_device, ptr %119, i32 0, i32 4
  %126 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 0, ptr %36, align 1
  %127 = ptrtoint ptr %laddr.i89 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %laddr.i89, align 8
  %129 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %37, align 1
  %130 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %msg.i82, ptr %38, align 4
  %131 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %39, align 4
  %132 = ptrtoint ptr %wbuf1.i87 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %wbuf.i81, ptr %wbuf1.i87, align 4
  %ch.i90 = getelementptr %struct.slim_port, ptr %117, i32 %i.2100, i32 3
  %133 = ptrtoint ptr %ch.i90 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ch.i90, align 4
  %conv.i91 = trunc i32 %134 to i8
  %135 = ptrtoint ptr %wbuf.i81 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %conv.i91, ptr %wbuf.i81, align 1
  %state.i92 = getelementptr %struct.slim_port, ptr %117, i32 %i.2100, i32 3, i32 5
  %136 = ptrtoint ptr %state.i92 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 5, ptr %state.i92, align 4
  %ctrl.i93 = getelementptr inbounds %struct.slim_device, ptr %119, i32 0, i32 2
  %137 = ptrtoint ptr %ctrl.i93 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ctrl.i93, align 8
  %call.i94 = call i32 @slim_do_transfer(ptr noundef %138, ptr noundef nonnull %txn.i83) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i83) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i82) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i81) #7
  %state29 = getelementptr %struct.slim_port, ptr %117, i32 %i.2100, i32 2
  %139 = ptrtoint ptr %state29 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %state29, align 4
  %inc31 = add nuw nsw i32 %i.2100, 1
  %140 = ptrtoint ptr %num_ports11 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_ports11, align 4
  %cmp23 = icmp slt i32 %inc31, %141
  br i1 %cmp23, label %for.body24.for.body24_crit_edge, label %for.body24.for.end32_crit_edge

for.body24.for.end32_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end32

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body24

for.end32:                                        ; preds = %for.body24.for.end32_crit_edge, %for.cond21.preheader.for.end32_crit_edge, %for.cond10.preheader.for.end32_crit_edge
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %142 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 95, ptr %mc, align 2
  %call33 = call i32 @slim_do_transfer(ptr noundef %4, ptr noundef nonnull %txn) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %if.end5.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %for.end32 ], [ %call, %if.then.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @slim_do_transfer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_stream_disable(ptr noundef %stream) #0 align 64 {
entry:
  %wbuf.i = alloca [1 x i8], align 1
  %msg.i = alloca %struct.slim_val_inf, align 4
  %txn.i = alloca %struct.slim_msg_txn, align 4
  %txn = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn) #7
  %0 = call ptr @memcpy(ptr %txn, ptr @__const.slim_stream_disable.txn, i32 16)
  %dev = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %ctrl1 = getelementptr inbounds %struct.slim_device, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrl1, align 8
  %disable_stream = getelementptr inbounds %struct.slim_controller, ptr %4, i32 0, i32 17
  %5 = ptrtoint ptr %disable_stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disable_stream, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %6(ptr noundef %stream) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call3 = call i32 @slim_do_transfer(ptr noundef %4, ptr noundef nonnull %txn) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %num_ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 7
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22 = icmp sgt i32 %8, 0
  br i1 %cmp22, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  %rbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %wbuf1.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %9 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 6
  %13 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 7
  %14 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %slim_deactivate_remove_channel.exit.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %slim_deactivate_remove_channel.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ports, align 4
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #7
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 511, ptr %msg.i, align 4
  %20 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rbuf.i, align 4
  %21 = ptrtoint ptr %wbuf1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %wbuf.i, ptr %wbuf1.i, align 4
  %22 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %comp.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i) #7
  %23 = ptrtoint ptr %txn.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 5, ptr %txn.i, align 4
  %24 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %9, align 1
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 85, ptr %10, align 2
  %laddr.i = getelementptr inbounds %struct.slim_device, ptr %18, i32 0, i32 4
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 0, ptr %11, align 1
  %27 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %laddr.i, align 8
  %29 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %12, align 1
  %30 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i, ptr %13, align 4
  %31 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %14, align 4
  %ch.i = getelementptr %struct.slim_port, ptr %16, i32 %i.023, i32 3
  %32 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch.i, align 4
  %conv.i = trunc i32 %33 to i8
  %34 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i, ptr %wbuf.i, align 1
  %ctrl.i = getelementptr inbounds %struct.slim_device, ptr %18, i32 0, i32 2
  %35 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctrl.i, align 8
  %call.i = call i32 @slim_do_transfer(ptr noundef %36, ptr noundef nonnull %txn.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.slim_deactivate_remove_channel.exit_crit_edge

for.body.slim_deactivate_remove_channel.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %slim_deactivate_remove_channel.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 88, ptr %10, align 2
  %state.i = getelementptr %struct.slim_port, ptr %16, i32 %i.023, i32 3, i32 5
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %state.i, align 4
  %39 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl.i, align 8
  %call9.i = call i32 @slim_do_transfer(ptr noundef %40, ptr noundef nonnull %txn.i) #7
  br label %slim_deactivate_remove_channel.exit

slim_deactivate_remove_channel.exit:              ; preds = %if.end.i, %for.body.slim_deactivate_remove_channel.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i) #7
  %inc = add nuw nsw i32 %i.023, 1
  %41 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %42
  br i1 %cmp, label %slim_deactivate_remove_channel.exit.for.body_crit_edge, label %slim_deactivate_remove_channel.exit.for.end_crit_edge

slim_deactivate_remove_channel.exit.for.end_crit_edge: ; preds = %slim_deactivate_remove_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

slim_deactivate_remove_channel.exit.for.body_crit_edge: ; preds = %slim_deactivate_remove_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %slim_deactivate_remove_channel.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %43 = ptrtoint ptr %mc to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 95, ptr %mc, align 2
  %call8 = call i32 @slim_do_transfer(ptr noundef %4, ptr noundef nonnull %txn) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %for.end ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_stream_unprepare(ptr nocapture noundef %stream) #0 align 64 {
entry:
  %wbuf.i = alloca [1 x i8], align 1
  %msg.i = alloca %struct.slim_val_inf, align 4
  %txn.i = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 7
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  %dev.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 1
  %rbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %wbuf1.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 6
  %6 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 7
  %7 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn.i, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %8 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.slim_port, ptr %9, i32 %i.012
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %wbuf.i) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #7
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 511, ptr %msg.i, align 4
  %13 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %rbuf.i, align 4
  %14 = ptrtoint ptr %wbuf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %wbuf.i, ptr %wbuf1.i, align 4
  %15 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %comp.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn.i) #7
  %16 = ptrtoint ptr %txn.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %txn.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %2, align 1
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 20, ptr %3, align 2
  %laddr.i = getelementptr inbounds %struct.slim_device, ptr %11, i32 0, i32 4
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 0, ptr %4, align 1
  %20 = ptrtoint ptr %laddr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %laddr.i, align 8
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %5, align 1
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %6, align 4
  %24 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %7, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %26 to i8
  %27 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i, ptr %wbuf.i, align 1
  %state.i = getelementptr %struct.slim_port, ptr %9, i32 %i.012, i32 3, i32 5
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %state.i, align 4
  %state6.i = getelementptr %struct.slim_port, ptr %9, i32 %i.012, i32 2
  %29 = ptrtoint ptr %state6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %state6.i, align 4
  %ctrl.i = getelementptr inbounds %struct.slim_device, ptr %11, i32 0, i32 2
  %30 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl.i, align 8
  %call.i = call i32 @slim_do_transfer(ptr noundef %31, ptr noundef nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %wbuf.i) #7
  %inc = add nuw nsw i32 %i.012, 1
  %32 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %33
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ports1 = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 8
  %34 = ptrtoint ptr %ports1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ports1, align 4
  call void @kfree(ptr noundef %35) #7
  %36 = ptrtoint ptr %ports1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %ports1, align 4
  %37 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %num_ports, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_stream_free(ptr noundef %stream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %stream_list_lock = getelementptr inbounds %struct.slim_device, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %stream_list_lock) #7
  %node = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.slim_stream_runtime, ptr %stream, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %stream_list_lock) #7
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stream, align 4
  tail call void @kfree(ptr noundef %11) #7
  tail call void @kfree(ptr noundef %stream) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/stream.c", i32 108, i32 35}
!2 = !{ptr @__ksymtab_slim_stream_allocate, !3, !"__ksymtab_slim_stream_allocate", i1 false, i1 false}
!3 = !{!"../drivers/slimbus/stream.c", i32 121, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/slimbus/stream.c", i32 210, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @slim_stream_prepare._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @slim_stream_prepare._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_slim_stream_prepare, !13, !"__ksymtab_slim_stream_prepare", i1 false, i1 false}
!13 = !{!"../drivers/slimbus/stream.c", i32 261, i32 1}
!14 = !{ptr @__ksymtab_slim_stream_enable, !15, !"__ksymtab_slim_stream_enable", i1 false, i1 false}
!15 = !{!"../drivers/slimbus/stream.c", i32 390, i32 1}
!16 = !{ptr @__ksymtab_slim_stream_disable, !17, !"__ksymtab_slim_stream_disable", i1 false, i1 false}
!17 = !{!"../drivers/slimbus/stream.c", i32 424, i32 1}
!18 = !{ptr @__ksymtab_slim_stream_unprepare, !19, !"__ksymtab_slim_stream_unprepare", i1 false, i1 false}
!19 = !{!"../drivers/slimbus/stream.c", i32 450, i32 1}
!20 = !{ptr @__ksymtab_slim_stream_free, !21, !"__ksymtab_slim_stream_free", i1 false, i1 false}
!21 = !{!"../drivers/slimbus/stream.c", i32 477, i32 1}
!22 = distinct !{null, !23, !"slim_presence_rate_table", i1 false, i1 false}
!23 = !{!"../drivers/slimbus/stream.c", i32 60, i32 18}
!24 = !{ptr @segdist_codes, !25, !"segdist_codes", i1 false, i1 false}
!25 = !{!"../drivers/slimbus/stream.c", i32 29, i32 3}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
