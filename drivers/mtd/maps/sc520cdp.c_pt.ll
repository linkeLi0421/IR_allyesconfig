; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/sc520cdp.c_pt.bc'
source_filename = "../drivers/mtd/maps/sc520cdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@merged_mtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mymtd = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@sc520cdp_map = internal global { [3 x %struct.map_info], [60 x i8] } { [3 x %struct.map_info] [%struct.map_info { ptr @.str, i32 8388608, i32 142606336, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.map_info { ptr @.str.1, i32 8388608, i32 150994944, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.map_info { ptr @.str.2, i32 524288, i32 159383552, ptr null, ptr null, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }], [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_sc520cdp__172_289_init_sc520cdp6 = internal global ptr @init_sc520cdp, section ".initcall6.init", align 4
@__exitcall_cleanup_sc520cdp = internal global ptr @cleanup_sc520cdp, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [40 x i8] c"sc520cdp.file=drivers/mtd/maps/sc520cdp\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [21 x i8] c"sc520cdp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [47 x i8] c"sc520cdp.author=Sysgo Real-Time Solutions GmbH\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [80 x i8] c"sc520cdp.description=MTD map driver for AMD SC520 Customer Development Platform\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SC520CDP Flash Bank #0\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SC520CDP Flash Bank #1\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SC520CDP DIL Flash\00", [45 x i8] zeroinitializer }, align 32
@init_sc520cdp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015SC520 CDP flash device: 0x%Lx at 0x%Lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_sc520cdp\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/maps/sc520cdp.c\00", [36 x i8] zeroinitializer }, align 32
@init_sc520cdp._entry_ptr = internal global ptr @init_sc520cdp._entry, section ".printk_index", align 4
@init_sc520cdp._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@init_sc520cdp._entry_ptr.8 = internal global ptr @init_sc520cdp._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_rom\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SC520CDP Flash Banks #0 and #1\00", [33 x i8] zeroinitializer }, align 32
@sc520cdp_setup_par._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.5, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015Could not find PAR responsible for %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc520cdp_setup_par\00", [45 x i8] zeroinitializer }, align 32
@sc520cdp_setup_par._entry_ptr = internal global ptr @sc520cdp_setup_par._entry, section ".printk_index", align 4
@sc520cdp_setup_par._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.5, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015Trying default address 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@sc520cdp_setup_par._entry_ptr.17 = internal global ptr @sc520cdp_setup_par._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"merged_mtd\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 96, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"mymtd\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 95, i32 25 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"sc520cdp_map\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 72, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 74, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 80, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 86, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 224, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 231, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 243, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 245, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 247, i32 28 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 259, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 202, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [31 x i8] c"../drivers/mtd/maps/sc520cdp.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 204, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_cleanup_sc520cdp, ptr @__initcall__kmod_sc520cdp__172_289_init_sc520cdp6, ptr @cleanup_sc520cdp, ptr @init_sc520cdp._entry, ptr @init_sc520cdp._entry.6, ptr @init_sc520cdp._entry_ptr, ptr @init_sc520cdp._entry_ptr.8, ptr @sc520cdp_setup_par._entry, ptr @sc520cdp_setup_par._entry.15, ptr @sc520cdp_setup_par._entry_ptr, ptr @sc520cdp_setup_par._entry_ptr.17, ptr @merged_mtd, ptr @mymtd, ptr @sc520cdp_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @merged_mtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mymtd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520cdp_map to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sc520cdp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sc520cdp._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520cdp_setup_par._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc520cdp_setup_par._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_sc520cdp() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @merged_mtd, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %0) #3
  %1 = load ptr, ptr @merged_mtd, align 4
  tail call void @mtd_concat_destroy(ptr noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @mymtd, i32 0, i32 2), align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.for.body.preheader_crit_edge, label %if.then2

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.preheader

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %2) #3
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then2, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [3 x ptr], ptr @mymtd, i32 0, i32 %i.026
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %for.body.if.end8_crit_edge, label %if.then6

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @map_destroy(ptr noundef nonnull %4) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.body.if.end8_crit_edge
  %virt = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %i.026, i32 3
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %virt, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %if.end8.for.inc_crit_edge, label %if.then11

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef nonnull %6) #3
  %7 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %virt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %if.end8.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtd_concat_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_sc520cdp() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ioremap(i32 noundef -69632, i32 noundef 4096) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.preheader.i, label %for.cond5.preheader.preheader.i

for.cond5.preheader.preheader.i:                  ; preds = %entry
  %arrayidx8.i = getelementptr i32, ptr %call.i, i32 34
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %1 = and i32 %0, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %1)
  %cmp12.i = icmp eq i32 %1, 160
  br i1 %cmp12.i, label %for.cond5.preheader.preheader.i.for.end20.thread.i_crit_edge, label %for.inc18.i

for.cond5.preheader.preheader.i.for.end20.thread.i_crit_edge: ; preds = %for.cond5.preheader.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.body.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store i32 138412032, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 0, i32 2), align 4
  store i32 146800640, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 1, i32 2), align 4
  store i32 155189248, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 2, i32 2), align 4
  br label %do.end.preheader

for.end20.thread.i:                               ; preds = %for.inc18.14.i.for.end20.thread.i_crit_edge, %for.inc18.13.i.for.end20.thread.i_crit_edge, %for.inc18.12.i.for.end20.thread.i_crit_edge, %for.inc18.11.i.for.end20.thread.i_crit_edge, %for.inc18.10.i.for.end20.thread.i_crit_edge, %for.inc18.9.i.for.end20.thread.i_crit_edge, %for.inc18.8.i.for.end20.thread.i_crit_edge, %for.inc18.7.i.for.end20.thread.i_crit_edge, %for.inc18.6.i.for.end20.thread.i_crit_edge, %for.inc18.5.i.for.end20.thread.i_crit_edge, %for.inc18.4.i.for.end20.thread.i_crit_edge, %for.inc18.3.i.for.end20.thread.i_crit_edge, %for.inc18.282.i.for.end20.thread.i_crit_edge, %for.inc18.177.i.for.end20.thread.i_crit_edge, %for.inc18.i.for.end20.thread.i_crit_edge, %for.cond5.preheader.preheader.i.for.end20.thread.i_crit_edge
  %arrayidx8.lcssa.i = phi ptr [ %arrayidx8.i, %for.cond5.preheader.preheader.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.173.i, %for.inc18.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.278.i, %for.inc18.177.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.3.i, %for.inc18.282.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.4.i, %for.inc18.3.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.5.i, %for.inc18.4.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.6.i, %for.inc18.5.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.7.i, %for.inc18.6.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.8.i, %for.inc18.7.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.9.i, %for.inc18.8.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.10.i, %for.inc18.9.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.11.i, %for.inc18.10.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.12.i, %for.inc18.11.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.13.i, %for.inc18.12.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.14.i, %for.inc18.13.i.for.end20.thread.i_crit_edge ], [ %arrayidx8.15.i, %for.inc18.14.i.for.end20.thread.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.lcssa.i, i32 -2134368342) #3, !srcloc !64
  br label %for.inc41.i

for.inc18.i:                                      ; preds = %for.cond5.preheader.preheader.i
  %arrayidx8.173.i = getelementptr i32, ptr %call.i, i32 35
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.173.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %3 = and i32 %2, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %3)
  %cmp12.175.i = icmp eq i32 %3, 160
  br i1 %cmp12.175.i, label %for.inc18.i.for.end20.thread.i_crit_edge, label %for.inc18.177.i

for.inc18.i.for.end20.thread.i_crit_edge:         ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.177.i:                                  ; preds = %for.inc18.i
  %arrayidx8.278.i = getelementptr i32, ptr %call.i, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.278.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %5 = and i32 %4, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %5)
  %cmp12.280.i = icmp eq i32 %5, 160
  br i1 %cmp12.280.i, label %for.inc18.177.i.for.end20.thread.i_crit_edge, label %for.inc18.282.i

for.inc18.177.i.for.end20.thread.i_crit_edge:     ; preds = %for.inc18.177.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.282.i:                                  ; preds = %for.inc18.177.i
  %arrayidx8.3.i = getelementptr i32, ptr %call.i, i32 37
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.3.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %7 = and i32 %6, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %7)
  %cmp12.3.i = icmp eq i32 %7, 160
  br i1 %cmp12.3.i, label %for.inc18.282.i.for.end20.thread.i_crit_edge, label %for.inc18.3.i

for.inc18.282.i.for.end20.thread.i_crit_edge:     ; preds = %for.inc18.282.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.3.i:                                    ; preds = %for.inc18.282.i
  %arrayidx8.4.i = getelementptr i32, ptr %call.i, i32 38
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.4.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %9 = and i32 %8, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %9)
  %cmp12.4.i = icmp eq i32 %9, 160
  br i1 %cmp12.4.i, label %for.inc18.3.i.for.end20.thread.i_crit_edge, label %for.inc18.4.i

for.inc18.3.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.4.i:                                    ; preds = %for.inc18.3.i
  %arrayidx8.5.i = getelementptr i32, ptr %call.i, i32 39
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.5.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %11 = and i32 %10, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %11)
  %cmp12.5.i = icmp eq i32 %11, 160
  br i1 %cmp12.5.i, label %for.inc18.4.i.for.end20.thread.i_crit_edge, label %for.inc18.5.i

for.inc18.4.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.5.i:                                    ; preds = %for.inc18.4.i
  %arrayidx8.6.i = getelementptr i32, ptr %call.i, i32 40
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.6.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %13 = and i32 %12, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %13)
  %cmp12.6.i = icmp eq i32 %13, 160
  br i1 %cmp12.6.i, label %for.inc18.5.i.for.end20.thread.i_crit_edge, label %for.inc18.6.i

for.inc18.5.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.6.i:                                    ; preds = %for.inc18.5.i
  %arrayidx8.7.i = getelementptr i32, ptr %call.i, i32 41
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.7.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %15 = and i32 %14, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %15)
  %cmp12.7.i = icmp eq i32 %15, 160
  br i1 %cmp12.7.i, label %for.inc18.6.i.for.end20.thread.i_crit_edge, label %for.inc18.7.i

for.inc18.6.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.7.i:                                    ; preds = %for.inc18.6.i
  %arrayidx8.8.i = getelementptr i32, ptr %call.i, i32 42
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %17 = and i32 %16, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %17)
  %cmp12.8.i = icmp eq i32 %17, 160
  br i1 %cmp12.8.i, label %for.inc18.7.i.for.end20.thread.i_crit_edge, label %for.inc18.8.i

for.inc18.7.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.8.i:                                    ; preds = %for.inc18.7.i
  %arrayidx8.9.i = getelementptr i32, ptr %call.i, i32 43
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.9.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %19 = and i32 %18, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %19)
  %cmp12.9.i = icmp eq i32 %19, 160
  br i1 %cmp12.9.i, label %for.inc18.8.i.for.end20.thread.i_crit_edge, label %for.inc18.9.i

for.inc18.8.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.9.i:                                    ; preds = %for.inc18.8.i
  %arrayidx8.10.i = getelementptr i32, ptr %call.i, i32 44
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.10.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %21 = and i32 %20, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %21)
  %cmp12.10.i = icmp eq i32 %21, 160
  br i1 %cmp12.10.i, label %for.inc18.9.i.for.end20.thread.i_crit_edge, label %for.inc18.10.i

for.inc18.9.i.for.end20.thread.i_crit_edge:       ; preds = %for.inc18.9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.10.i:                                   ; preds = %for.inc18.9.i
  %arrayidx8.11.i = getelementptr i32, ptr %call.i, i32 45
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.11.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %23 = and i32 %22, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %23)
  %cmp12.11.i = icmp eq i32 %23, 160
  br i1 %cmp12.11.i, label %for.inc18.10.i.for.end20.thread.i_crit_edge, label %for.inc18.11.i

for.inc18.10.i.for.end20.thread.i_crit_edge:      ; preds = %for.inc18.10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.11.i:                                   ; preds = %for.inc18.10.i
  %arrayidx8.12.i = getelementptr i32, ptr %call.i, i32 46
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.12.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %25 = and i32 %24, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %25)
  %cmp12.12.i = icmp eq i32 %25, 160
  br i1 %cmp12.12.i, label %for.inc18.11.i.for.end20.thread.i_crit_edge, label %for.inc18.12.i

for.inc18.11.i.for.end20.thread.i_crit_edge:      ; preds = %for.inc18.11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.12.i:                                   ; preds = %for.inc18.11.i
  %arrayidx8.13.i = getelementptr i32, ptr %call.i, i32 47
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.13.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %27 = and i32 %26, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %27)
  %cmp12.13.i = icmp eq i32 %27, 160
  br i1 %cmp12.13.i, label %for.inc18.12.i.for.end20.thread.i_crit_edge, label %for.inc18.13.i

for.inc18.12.i.for.end20.thread.i_crit_edge:      ; preds = %for.inc18.12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.13.i:                                   ; preds = %for.inc18.12.i
  %arrayidx8.14.i = getelementptr i32, ptr %call.i, i32 48
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.14.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %29 = and i32 %28, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %29)
  %cmp12.14.i = icmp eq i32 %29, 160
  br i1 %cmp12.14.i, label %for.inc18.13.i.for.end20.thread.i_crit_edge, label %for.inc18.14.i

for.inc18.13.i.for.end20.thread.i_crit_edge:      ; preds = %for.inc18.13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

for.inc18.14.i:                                   ; preds = %for.inc18.13.i
  %arrayidx8.15.i = getelementptr i32, ptr %call.i, i32 49
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.15.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %31 = and i32 %30, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %31)
  %cmp12.15.i = icmp eq i32 %31, 160
  br i1 %cmp12.15.i, label %for.inc18.14.i.for.end20.thread.i_crit_edge, label %do.end25.i

for.inc18.14.i.for.end20.thread.i_crit_edge:      ; preds = %for.inc18.14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.i

do.end25.i:                                       ; preds = %for.inc18.14.i
  call void @__sanitizer_cov_trace_pc() #5
  %32 = load ptr, ptr @sc520cdp_map, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %32) #6
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 138412032) #6
  store i32 138412032, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 0, i32 2), align 4
  br label %for.inc41.i

for.inc41.i:                                      ; preds = %do.end25.i, %for.end20.thread.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %34 = and i32 %33, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %34)
  %cmp12.1.i = icmp eq i32 %34, 192
  br i1 %cmp12.1.i, label %for.inc41.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.i

for.inc41.i.for.end20.thread.1.i_crit_edge:       ; preds = %for.inc41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.i:                                    ; preds = %for.inc41.i
  %arrayidx8.1.1.i = getelementptr i32, ptr %call.i, i32 35
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.1.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %36 = and i32 %35, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %36)
  %cmp12.1.1.i = icmp eq i32 %36, 192
  br i1 %cmp12.1.1.i, label %for.inc18.1.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.1.i

for.inc18.1.i.for.end20.thread.1.i_crit_edge:     ; preds = %for.inc18.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.1.i:                                  ; preds = %for.inc18.1.i
  %arrayidx8.1.2.i = getelementptr i32, ptr %call.i, i32 36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.2.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %38 = and i32 %37, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %38)
  %cmp12.1.2.i = icmp eq i32 %38, 192
  br i1 %cmp12.1.2.i, label %for.inc18.1.1.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.2.i

for.inc18.1.1.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.2.i:                                  ; preds = %for.inc18.1.1.i
  %arrayidx8.1.3.i = getelementptr i32, ptr %call.i, i32 37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.3.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %40 = and i32 %39, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %40)
  %cmp12.1.3.i = icmp eq i32 %40, 192
  br i1 %cmp12.1.3.i, label %for.inc18.1.2.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.3.i

for.inc18.1.2.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.3.i:                                  ; preds = %for.inc18.1.2.i
  %arrayidx8.1.4.i = getelementptr i32, ptr %call.i, i32 38
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.4.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %42 = and i32 %41, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %42)
  %cmp12.1.4.i = icmp eq i32 %42, 192
  br i1 %cmp12.1.4.i, label %for.inc18.1.3.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.4.i

for.inc18.1.3.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.4.i:                                  ; preds = %for.inc18.1.3.i
  %arrayidx8.1.5.i = getelementptr i32, ptr %call.i, i32 39
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.5.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %44 = and i32 %43, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %44)
  %cmp12.1.5.i = icmp eq i32 %44, 192
  br i1 %cmp12.1.5.i, label %for.inc18.1.4.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.5.i

for.inc18.1.4.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.5.i:                                  ; preds = %for.inc18.1.4.i
  %arrayidx8.1.6.i = getelementptr i32, ptr %call.i, i32 40
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.6.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %46 = and i32 %45, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %46)
  %cmp12.1.6.i = icmp eq i32 %46, 192
  br i1 %cmp12.1.6.i, label %for.inc18.1.5.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.6.i

for.inc18.1.5.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.6.i:                                  ; preds = %for.inc18.1.5.i
  %arrayidx8.1.7.i = getelementptr i32, ptr %call.i, i32 41
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.7.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %48 = and i32 %47, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %48)
  %cmp12.1.7.i = icmp eq i32 %48, 192
  br i1 %cmp12.1.7.i, label %for.inc18.1.6.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.7.i

for.inc18.1.6.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.7.i:                                  ; preds = %for.inc18.1.6.i
  %arrayidx8.1.8.i = getelementptr i32, ptr %call.i, i32 42
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %50 = and i32 %49, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %50)
  %cmp12.1.8.i = icmp eq i32 %50, 192
  br i1 %cmp12.1.8.i, label %for.inc18.1.7.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.8.i

for.inc18.1.7.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.8.i:                                  ; preds = %for.inc18.1.7.i
  %arrayidx8.1.9.i = getelementptr i32, ptr %call.i, i32 43
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.9.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %52 = and i32 %51, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %52)
  %cmp12.1.9.i = icmp eq i32 %52, 192
  br i1 %cmp12.1.9.i, label %for.inc18.1.8.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.9.i

for.inc18.1.8.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.9.i:                                  ; preds = %for.inc18.1.8.i
  %arrayidx8.1.10.i = getelementptr i32, ptr %call.i, i32 44
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.10.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %54 = and i32 %53, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %54)
  %cmp12.1.10.i = icmp eq i32 %54, 192
  br i1 %cmp12.1.10.i, label %for.inc18.1.9.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.10.i

for.inc18.1.9.i.for.end20.thread.1.i_crit_edge:   ; preds = %for.inc18.1.9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.10.i:                                 ; preds = %for.inc18.1.9.i
  %arrayidx8.1.11.i = getelementptr i32, ptr %call.i, i32 45
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.11.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %56 = and i32 %55, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %56)
  %cmp12.1.11.i = icmp eq i32 %56, 192
  br i1 %cmp12.1.11.i, label %for.inc18.1.10.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.11.i

for.inc18.1.10.i.for.end20.thread.1.i_crit_edge:  ; preds = %for.inc18.1.10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.11.i:                                 ; preds = %for.inc18.1.10.i
  %arrayidx8.1.12.i = getelementptr i32, ptr %call.i, i32 46
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.12.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %58 = and i32 %57, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %58)
  %cmp12.1.12.i = icmp eq i32 %58, 192
  br i1 %cmp12.1.12.i, label %for.inc18.1.11.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.12.i

for.inc18.1.11.i.for.end20.thread.1.i_crit_edge:  ; preds = %for.inc18.1.11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.12.i:                                 ; preds = %for.inc18.1.11.i
  %arrayidx8.1.13.i = getelementptr i32, ptr %call.i, i32 47
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.13.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %60 = and i32 %59, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %60)
  %cmp12.1.13.i = icmp eq i32 %60, 192
  br i1 %cmp12.1.13.i, label %for.inc18.1.12.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.13.i

for.inc18.1.12.i.for.end20.thread.1.i_crit_edge:  ; preds = %for.inc18.1.12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.13.i:                                 ; preds = %for.inc18.1.12.i
  %arrayidx8.1.14.i = getelementptr i32, ptr %call.i, i32 48
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.14.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %62 = and i32 %61, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %62)
  %cmp12.1.14.i = icmp eq i32 %62, 192
  br i1 %cmp12.1.14.i, label %for.inc18.1.13.i.for.end20.thread.1.i_crit_edge, label %for.inc18.1.14.i

for.inc18.1.13.i.for.end20.thread.1.i_crit_edge:  ; preds = %for.inc18.1.13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

for.inc18.1.14.i:                                 ; preds = %for.inc18.1.13.i
  %arrayidx8.1.15.i = getelementptr i32, ptr %call.i, i32 49
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.1.15.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %64 = and i32 %63, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %64)
  %cmp12.1.15.i = icmp eq i32 %64, 192
  br i1 %cmp12.1.15.i, label %for.inc18.1.14.i.for.end20.thread.1.i_crit_edge, label %do.end25.1.i

for.inc18.1.14.i.for.end20.thread.1.i_crit_edge:  ; preds = %for.inc18.1.14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.1.i

do.end25.1.i:                                     ; preds = %for.inc18.1.14.i
  call void @__sanitizer_cov_trace_pc() #5
  %65 = load ptr, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 1), align 4
  %call28.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %65) #6
  %call35.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 146800640) #6
  store i32 146800640, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 1, i32 2), align 4
  br label %for.inc41.1.i

for.end20.thread.1.i:                             ; preds = %for.inc18.1.14.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.13.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.12.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.11.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.10.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.9.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.8.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.7.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.6.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.5.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.4.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.3.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.2.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.1.i.for.end20.thread.1.i_crit_edge, %for.inc18.1.i.for.end20.thread.1.i_crit_edge, %for.inc41.i.for.end20.thread.1.i_crit_edge
  %arrayidx8.lcssa.1.i = phi ptr [ %arrayidx8.i, %for.inc41.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.1.i, %for.inc18.1.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.2.i, %for.inc18.1.1.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.3.i, %for.inc18.1.2.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.4.i, %for.inc18.1.3.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.5.i, %for.inc18.1.4.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.6.i, %for.inc18.1.5.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.7.i, %for.inc18.1.6.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.8.i, %for.inc18.1.7.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.9.i, %for.inc18.1.8.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.10.i, %for.inc18.1.9.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.11.i, %for.inc18.1.10.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.12.i, %for.inc18.1.11.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.13.i, %for.inc18.1.12.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.14.i, %for.inc18.1.13.i.for.end20.thread.1.i_crit_edge ], [ %arrayidx8.1.15.i, %for.inc18.1.14.i.for.end20.thread.1.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.lcssa.1.i, i32 13180874) #3, !srcloc !64
  br label %for.inc41.1.i

for.inc41.1.i:                                    ; preds = %for.end20.thread.1.i, %do.end25.1.i
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %67 = and i32 %66, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %67)
  %cmp12.2.i = icmp eq i32 %67, 128
  br i1 %cmp12.2.i, label %for.inc41.1.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.i

for.inc41.1.i.for.end20.thread.2.i_crit_edge:     ; preds = %for.inc41.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.i:                                    ; preds = %for.inc41.1.i
  %arrayidx8.2.1.i = getelementptr i32, ptr %call.i, i32 35
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.1.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %69 = and i32 %68, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %69)
  %cmp12.2.1.i = icmp eq i32 %69, 128
  br i1 %cmp12.2.1.i, label %for.inc18.2.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.1.i

for.inc18.2.i.for.end20.thread.2.i_crit_edge:     ; preds = %for.inc18.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.1.i:                                  ; preds = %for.inc18.2.i
  %arrayidx8.2.2.i = getelementptr i32, ptr %call.i, i32 36
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.2.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %71 = and i32 %70, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %71)
  %cmp12.2.2.i = icmp eq i32 %71, 128
  br i1 %cmp12.2.2.i, label %for.inc18.2.1.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.2.i

for.inc18.2.1.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.1.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.2.i:                                  ; preds = %for.inc18.2.1.i
  %arrayidx8.2.3.i = getelementptr i32, ptr %call.i, i32 37
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.3.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %73 = and i32 %72, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %73)
  %cmp12.2.3.i = icmp eq i32 %73, 128
  br i1 %cmp12.2.3.i, label %for.inc18.2.2.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.3.i

for.inc18.2.2.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.3.i:                                  ; preds = %for.inc18.2.2.i
  %arrayidx8.2.4.i = getelementptr i32, ptr %call.i, i32 38
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.4.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %75 = and i32 %74, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %75)
  %cmp12.2.4.i = icmp eq i32 %75, 128
  br i1 %cmp12.2.4.i, label %for.inc18.2.3.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.4.i

for.inc18.2.3.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.3.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.4.i:                                  ; preds = %for.inc18.2.3.i
  %arrayidx8.2.5.i = getelementptr i32, ptr %call.i, i32 39
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.5.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %77 = and i32 %76, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %77)
  %cmp12.2.5.i = icmp eq i32 %77, 128
  br i1 %cmp12.2.5.i, label %for.inc18.2.4.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.5.i

for.inc18.2.4.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.5.i:                                  ; preds = %for.inc18.2.4.i
  %arrayidx8.2.6.i = getelementptr i32, ptr %call.i, i32 40
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.6.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %79 = and i32 %78, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %79)
  %cmp12.2.6.i = icmp eq i32 %79, 128
  br i1 %cmp12.2.6.i, label %for.inc18.2.5.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.6.i

for.inc18.2.5.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.6.i:                                  ; preds = %for.inc18.2.5.i
  %arrayidx8.2.7.i = getelementptr i32, ptr %call.i, i32 41
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.7.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %81 = and i32 %80, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %81)
  %cmp12.2.7.i = icmp eq i32 %81, 128
  br i1 %cmp12.2.7.i, label %for.inc18.2.6.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.7.i

for.inc18.2.6.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.7.i:                                  ; preds = %for.inc18.2.6.i
  %arrayidx8.2.8.i = getelementptr i32, ptr %call.i, i32 42
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.8.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %83 = and i32 %82, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %83)
  %cmp12.2.8.i = icmp eq i32 %83, 128
  br i1 %cmp12.2.8.i, label %for.inc18.2.7.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.8.i

for.inc18.2.7.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.8.i:                                  ; preds = %for.inc18.2.7.i
  %arrayidx8.2.9.i = getelementptr i32, ptr %call.i, i32 43
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.9.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %85 = and i32 %84, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %85)
  %cmp12.2.9.i = icmp eq i32 %85, 128
  br i1 %cmp12.2.9.i, label %for.inc18.2.8.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.9.i

for.inc18.2.8.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.8.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.9.i:                                  ; preds = %for.inc18.2.8.i
  %arrayidx8.2.10.i = getelementptr i32, ptr %call.i, i32 44
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.10.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %87 = and i32 %86, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %87)
  %cmp12.2.10.i = icmp eq i32 %87, 128
  br i1 %cmp12.2.10.i, label %for.inc18.2.9.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.10.i

for.inc18.2.9.i.for.end20.thread.2.i_crit_edge:   ; preds = %for.inc18.2.9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.10.i:                                 ; preds = %for.inc18.2.9.i
  %arrayidx8.2.11.i = getelementptr i32, ptr %call.i, i32 45
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.11.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %89 = and i32 %88, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %89)
  %cmp12.2.11.i = icmp eq i32 %89, 128
  br i1 %cmp12.2.11.i, label %for.inc18.2.10.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.11.i

for.inc18.2.10.i.for.end20.thread.2.i_crit_edge:  ; preds = %for.inc18.2.10.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.11.i:                                 ; preds = %for.inc18.2.10.i
  %arrayidx8.2.12.i = getelementptr i32, ptr %call.i, i32 46
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.12.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %91 = and i32 %90, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %91)
  %cmp12.2.12.i = icmp eq i32 %91, 128
  br i1 %cmp12.2.12.i, label %for.inc18.2.11.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.12.i

for.inc18.2.11.i.for.end20.thread.2.i_crit_edge:  ; preds = %for.inc18.2.11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.12.i:                                 ; preds = %for.inc18.2.11.i
  %arrayidx8.2.13.i = getelementptr i32, ptr %call.i, i32 47
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.13.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %93 = and i32 %92, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %93)
  %cmp12.2.13.i = icmp eq i32 %93, 128
  br i1 %cmp12.2.13.i, label %for.inc18.2.12.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.13.i

for.inc18.2.12.i.for.end20.thread.2.i_crit_edge:  ; preds = %for.inc18.2.12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.13.i:                                 ; preds = %for.inc18.2.12.i
  %arrayidx8.2.14.i = getelementptr i32, ptr %call.i, i32 48
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.14.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %95 = and i32 %94, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %95)
  %cmp12.2.14.i = icmp eq i32 %95, 128
  br i1 %cmp12.2.14.i, label %for.inc18.2.13.i.for.end20.thread.2.i_crit_edge, label %for.inc18.2.14.i

for.inc18.2.13.i.for.end20.thread.2.i_crit_edge:  ; preds = %for.inc18.2.13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

for.inc18.2.14.i:                                 ; preds = %for.inc18.2.13.i
  %arrayidx8.2.15.i = getelementptr i32, ptr %call.i, i32 49
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8.2.15.i) #3, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %97 = and i32 %96, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %97)
  %cmp12.2.15.i = icmp eq i32 %97, 128
  br i1 %cmp12.2.15.i, label %for.inc18.2.14.i.for.end20.thread.2.i_crit_edge, label %do.end25.2.i

for.inc18.2.14.i.for.end20.thread.2.i_crit_edge:  ; preds = %for.inc18.2.14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end20.thread.2.i

do.end25.2.i:                                     ; preds = %for.inc18.2.14.i
  call void @__sanitizer_cov_trace_pc() #5
  %98 = load ptr, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 2), align 4
  %call28.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %98) #6
  %call35.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 155189248) #6
  store i32 155189248, ptr getelementptr inbounds ([3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 2, i32 2), align 4
  br label %for.inc41.2.i

for.end20.thread.2.i:                             ; preds = %for.inc18.2.14.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.13.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.12.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.11.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.10.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.9.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.8.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.7.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.6.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.5.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.4.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.3.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.2.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.1.i.for.end20.thread.2.i_crit_edge, %for.inc18.2.i.for.end20.thread.2.i_crit_edge, %for.inc41.1.i.for.end20.thread.2.i_crit_edge
  %arrayidx8.lcssa.2.i = phi ptr [ %arrayidx8.i, %for.inc41.1.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.1.i, %for.inc18.2.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.2.i, %for.inc18.2.1.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.3.i, %for.inc18.2.2.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.4.i, %for.inc18.2.3.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.5.i, %for.inc18.2.4.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.6.i, %for.inc18.2.5.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.7.i, %for.inc18.2.6.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.8.i, %for.inc18.2.7.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.9.i, %for.inc18.2.8.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.10.i, %for.inc18.2.9.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.11.i, %for.inc18.2.10.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.12.i, %for.inc18.2.11.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.13.i, %for.inc18.2.12.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.14.i, %for.inc18.2.13.i.for.end20.thread.2.i_crit_edge ], [ %arrayidx8.2.15.i, %for.inc18.2.14.i.for.end20.thread.2.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.lcssa.2.i, i32 -2134310518) #3, !srcloc !64
  br label %for.inc41.2.i

for.inc41.2.i:                                    ; preds = %for.end20.thread.2.i, %do.end25.2.i
  tail call void @iounmap(ptr noundef nonnull %call.i) #3
  br label %do.end.preheader

do.end.preheader:                                 ; preds = %for.inc41.2.i, %for.body.preheader.i
  br label %do.end

do.end:                                           ; preds = %for.inc53.do.end_crit_edge, %do.end.preheader
  %i.0108 = phi i32 [ %inc54, %for.inc53.do.end_crit_edge ], [ 0, %do.end.preheader ]
  %devices_found.0106 = phi i32 [ %devices_found.1, %for.inc53.do.end_crit_edge ], [ 0, %do.end.preheader ]
  %arrayidx = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %i.0108
  %size = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %i.0108, i32 1
  %99 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size, align 4
  %conv = zext i32 %100 to i64
  %phys = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %i.0108, i32 2
  %101 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %phys, align 4
  %conv2 = zext i32 %102 to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i64 noundef %conv, i64 noundef %conv2) #6
  %103 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %phys, align 4
  %105 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size, align 4
  %call7 = tail call ptr @ioremap(i32 noundef %104, i32 noundef %106) #3
  %virt = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %i.0108, i32 3
  %107 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7, ptr %virt, align 4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %do.end13, label %if.end26

do.end13:                                         ; preds = %do.end
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0108)
  %cmp17109.not = icmp eq i32 %i.0108, 0
  br i1 %cmp17109.not, label %do.end13.cleanup_crit_edge, label %do.end13.for.body19_crit_edge

do.end13.for.body19_crit_edge:                    ; preds = %do.end13
  br label %for.body19

do.end13.cleanup_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body19:                                       ; preds = %for.inc.for.body19_crit_edge, %do.end13.for.body19_crit_edge
  %j.0110 = phi i32 [ %inc, %for.inc.for.body19_crit_edge ], [ 0, %do.end13.for.body19_crit_edge ]
  %arrayidx20 = getelementptr [3 x ptr], ptr @mymtd, i32 0, i32 %j.0110
  %108 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx20, align 4
  %tobool21.not = icmp eq ptr %109, null
  br i1 %tobool21.not, label %for.body19.for.inc_crit_edge, label %if.then22

for.body19.for.inc_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then22:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @map_destroy(ptr noundef nonnull %109) #3
  %virt25 = getelementptr [3 x %struct.map_info], ptr @sc520cdp_map, i32 0, i32 %j.0110, i32 3
  %110 = ptrtoint ptr %virt25 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %virt25, align 4
  tail call void @iounmap(ptr noundef %111) #3
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body19.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0110, 1
  %exitcond113.not = icmp eq i32 %inc, %i.0108
  br i1 %exitcond113.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body19_crit_edge

for.inc.for.body19_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body19

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end26:                                         ; preds = %do.end
  tail call void @simple_map_init(ptr noundef %arrayidx) #3
  %call29 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.9, ptr noundef %arrayidx) #3
  %arrayidx30 = getelementptr [3 x ptr], ptr @mymtd, i32 0, i32 %i.0108
  %112 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %call29, ptr %arrayidx30, align 4
  %tobool32.not = icmp eq ptr %call29, null
  br i1 %tobool32.not, label %if.end37, label %if.end26.if.then47_crit_edge

if.end26.if.then47_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.end37:                                         ; preds = %if.end26
  %call35 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.10, ptr noundef %arrayidx) #3
  %113 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call35, ptr %arrayidx30, align 4
  %tobool39.not = icmp eq ptr %call35, null
  br i1 %tobool39.not, label %if.end44, label %if.end37.if.then47_crit_edge

if.end37.if.then47_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.end44:                                         ; preds = %if.end37
  %call42 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.11, ptr noundef %arrayidx) #3
  %114 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %call42, ptr %arrayidx30, align 4
  %tobool46.not = icmp eq ptr %call42, null
  br i1 %tobool46.not, label %if.else, label %if.end44.if.then47_crit_edge

if.end44.if.then47_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then47

if.then47:                                        ; preds = %if.end44.if.then47_crit_edge, %if.end37.if.then47_crit_edge, %if.end26.if.then47_crit_edge
  %115 = phi ptr [ %call42, %if.end44.if.then47_crit_edge ], [ %call35, %if.end37.if.then47_crit_edge ], [ %call29, %if.end26.if.then47_crit_edge ]
  %owner = getelementptr inbounds %struct.mtd_info, ptr %115, i32 0, i32 55
  %116 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr null, ptr %owner, align 4
  %inc49 = add i32 %devices_found.0106, 1
  br label %for.inc53

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %117 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %virt, align 4
  tail call void @iounmap(ptr noundef %118) #3
  br label %for.inc53

for.inc53:                                        ; preds = %if.else, %if.then47
  %devices_found.1 = phi i32 [ %inc49, %if.then47 ], [ %devices_found.0106, %if.else ]
  %inc54 = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc54, 3
  br i1 %exitcond.not, label %for.end55, label %for.inc53.do.end_crit_edge

for.inc53.do.end_crit_edge:                       ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.end55:                                        ; preds = %for.inc53
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %devices_found.1)
  %cmp56 = icmp sgt i32 %devices_found.1, 1
  br i1 %cmp56, label %if.then58, label %for.end55.if.end69_crit_edge

for.end55.if.end69_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

if.then58:                                        ; preds = %for.end55
  %call59 = tail call ptr @mtd_concat_create(ptr noundef nonnull @mymtd, i32 noundef 2, ptr noundef nonnull @.str.12) #3
  store ptr %call59, ptr @merged_mtd, align 4
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %if.then58.if.end64_crit_edge, label %if.then61

if.then58.if.end64_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #5
  %call62 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call59, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #3
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then58.if.end64_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %devices_found.1)
  %cmp65 = icmp eq i32 %devices_found.1, 3
  br i1 %cmp65, label %if.then67, label %if.end64.if.end69_crit_edge

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end69

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  %119 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @mymtd, i32 0, i32 2), align 4
  %call68 = tail call i32 @mtd_device_parse_register(ptr noundef %119, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #3
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64.if.end69_crit_edge, %for.end55.if.end69_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devices_found.1)
  %tobool70.not = icmp eq i32 %devices_found.1, 0
  %cond = select i1 %tobool70.not, i32 -6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %for.inc.cleanup_crit_edge, %do.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end69 ], [ -5, %do.end13.cleanup_crit_edge ], [ -5, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_concat_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_sc520cdp__172_289_init_sc520cdp6, !1, !"__initcall__kmod_sc520cdp__172_289_init_sc520cdp6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_cleanup_sc520cdp, !3, !"__exitcall_cleanup_sc520cdp", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 290, i32 1}
!4 = !{ptr @__UNIQUE_ID_file173, !5, !"__UNIQUE_ID_file173", i1 false, i1 false}
!5 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 292, i32 1}
!6 = !{ptr @__UNIQUE_ID_license174, !5, !"__UNIQUE_ID_license174", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author175, !8, !"__UNIQUE_ID_author175", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_description176, !10, !"__UNIQUE_ID_description176", i1 false, i1 false}
!10 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 294, i32 1}
!11 = !{ptr @mymtd, !12, !"mymtd", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 95, i32 25}
!13 = !{ptr @merged_mtd, !14, !"merged_mtd", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 96, i32 25}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 74, i32 11}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 80, i32 11}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 86, i32 11}
!21 = !{ptr @sc520cdp_map, !22, !"sc520cdp_map", i1 false, i1 false}
!22 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 72, i32 24}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 224, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @init_sc520cdp._entry, !24, !"_entry", i1 false, i1 false}
!28 = !{ptr @init_sc520cdp._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 231, i32 4}
!31 = !{ptr @init_sc520cdp._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @init_sc520cdp._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 243, i32 27}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 245, i32 28}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 247, i32 28}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 259, i32 44}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 202, i32 4}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sc520cdp_setup_par._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sc520cdp_setup_par._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 204, i32 4}
!48 = !{ptr @sc520cdp_setup_par._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sc520cdp_setup_par._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"par_table", i1 false, i1 false}
!51 = !{!"../drivers/mtd/maps/sc520cdp.c", i32 150, i32 37}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 4037346}
!62 = !{i64 2152584914}
!63 = !{i64 2152585224}
!64 = !{i64 4036928}
