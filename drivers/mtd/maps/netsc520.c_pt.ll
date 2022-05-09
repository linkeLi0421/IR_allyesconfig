; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/netsc520.c_pt.bc'
source_filename = "../drivers/mtd/maps/netsc520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtd_partition = type { ptr, ptr, i64, i64, i32, i32, ptr }
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

@mymtd = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@netsc520_map = internal global { %struct.map_info, [52 x i8] } { %struct.map_info { ptr @.str, i32 1048576, i32 2097152, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_netsc520__172_122_init_netsc5206 = internal global ptr @init_netsc520, section ".initcall6.init", align 4
@__exitcall_cleanup_netsc520 = internal global ptr @cleanup_netsc520, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [40 x i8] c"netsc520.file=drivers/mtd/maps/netsc520\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [21 x i8] c"netsc520.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [56 x i8] c"netsc520.author=Mark Langsdorf <mark.langsdorf@amd.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [73 x i8] c"netsc520.description=MTD map driver for AMD NetSc520 Demonstration Board\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netsc520 Flash Bank\00", [44 x i8] zeroinitializer }, align 32
@init_netsc520._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\015NetSc520 flash device: 0x%Lx at 0x%Lx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_netsc520\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mtd/maps/netsc520.c\00", [36 x i8] zeroinitializer }, align 32
@init_netsc520._entry_ptr = internal global ptr @init_netsc520._entry, section ".printk_index", align 4
@init_netsc520._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to ioremap\0A\00", [45 x i8] zeroinitializer }, align 32
@init_netsc520._entry_ptr.6 = internal global ptr @init_netsc520._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_ram\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_rom\00", [24 x i8] zeroinitializer }, align 32
@partition_info = internal constant { [4 x %struct.mtd_partition], [32 x i8] } { [4 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.10, ptr null, i64 786432, i64 0, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.11, ptr null, i64 262144, i64 786432, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.12, ptr null, i64 15204352, i64 1048576, i32 0, i32 0, ptr null }, %struct.mtd_partition { ptr @.str.13, ptr null, i64 524288, i64 16252928, i32 0, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NetSc520 boot kernel\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"NetSc520 Low BIOS\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NetSc520 file system\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NetSc520 High BIOS\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [6 x i8] c"mymtd\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 78, i32 25 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"netsc520_map\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 69, i32 24 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 70, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 82, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 88, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 94, i32 23 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 96, i32 24 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 98, i32 24 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"partition_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 42, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 44, i32 14 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 49, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 54, i32 14 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [31 x i8] c"../drivers/mtd/maps/netsc520.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 59, i32 14 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_cleanup_netsc520, ptr @__initcall__kmod_netsc520__172_122_init_netsc5206, ptr @cleanup_netsc520, ptr @init_netsc520._entry, ptr @init_netsc520._entry.4, ptr @init_netsc520._entry_ptr, ptr @init_netsc520._entry_ptr.6, ptr @mymtd, ptr @netsc520_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @partition_info, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mymtd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsc520_map to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_netsc520._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_netsc520._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partition_info to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_netsc520() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  %0 = load ptr, ptr @mymtd, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %0) #3
  %1 = load ptr, ptr @mymtd, align 4
  tail call void @map_destroy(ptr noundef %1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load ptr, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 3), align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef nonnull %2) #3
  store ptr null, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 3), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_netsc520() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 1), align 4
  %conv = zext i32 %0 to i64
  %1 = load i32, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 2), align 4
  %conv1 = zext i32 %1 to i64
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i64 noundef %conv, i64 noundef %conv1) #6
  %2 = load i32, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 2), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 1), align 4
  %call2 = tail call ptr @ioremap(i32 noundef %2, i32 noundef %3) #3
  store ptr %call2, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 3), align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #6
  br label %return

if.end:                                           ; preds = %entry
  tail call void @simple_map_init(ptr noundef nonnull @netsc520_map) #3
  %call7 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.7, ptr noundef nonnull @netsc520_map) #3
  store ptr %call7, ptr @mymtd, align 4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end11, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.end11:                                         ; preds = %if.end
  %call10 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.8, ptr noundef nonnull @netsc520_map) #3
  store ptr %call10, ptr @mymtd, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end15, label %if.end11.if.end18_crit_edge

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.end15:                                         ; preds = %if.end11
  %call14 = tail call ptr @do_map_probe(ptr noundef nonnull @.str.9, ptr noundef nonnull @netsc520_map) #3
  store ptr %call14, ptr @mymtd, align 4
  %tobool16.not = icmp eq ptr %call14, null
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end18_crit_edge

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %4 = load ptr, ptr getelementptr inbounds (%struct.map_info, ptr @netsc520_map, i32 0, i32 3), align 4
  tail call void @iounmap(ptr noundef %4) #3
  br label %return

if.end18:                                         ; preds = %if.end15.if.end18_crit_edge, %if.end11.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %5 = phi ptr [ %call14, %if.end15.if.end18_crit_edge ], [ %call10, %if.end11.if.end18_crit_edge ], [ %call7, %if.end.if.end18_crit_edge ]
  %owner = getelementptr inbounds %struct.mtd_info, ptr %5, i32 0, i32 55
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %owner, align 4
  %call19 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef nonnull @partition_info, i32 noundef 4) #3
  br label %return

return:                                           ; preds = %if.end18, %if.then17, %do.end4
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -6, %if.then17 ], [ -5, %do.end4 ]
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
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_netsc520__172_122_init_netsc5206, !1, !"__initcall__kmod_netsc520__172_122_init_netsc5206", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/netsc520.c", i32 122, i32 1}
!2 = !{ptr @__exitcall_cleanup_netsc520, !3, !"__exitcall_cleanup_netsc520", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/netsc520.c", i32 123, i32 1}
!4 = !{ptr @__UNIQUE_ID_file173, !5, !"__UNIQUE_ID_file173", i1 false, i1 false}
!5 = !{!"../drivers/mtd/maps/netsc520.c", i32 125, i32 1}
!6 = !{ptr @__UNIQUE_ID_license174, !5, !"__UNIQUE_ID_license174", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author175, !8, !"__UNIQUE_ID_author175", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/netsc520.c", i32 126, i32 1}
!9 = !{ptr @__UNIQUE_ID_description176, !10, !"__UNIQUE_ID_description176", i1 false, i1 false}
!10 = !{!"../drivers/mtd/maps/netsc520.c", i32 127, i32 1}
!11 = !{ptr @mymtd, !12, !"mymtd", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/netsc520.c", i32 78, i32 25}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/netsc520.c", i32 70, i32 10}
!15 = !{ptr @netsc520_map, !16, !"netsc520_map", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/netsc520.c", i32 69, i32 24}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/netsc520.c", i32 82, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @init_netsc520._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @init_netsc520._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mtd/maps/netsc520.c", i32 88, i32 3}
!25 = !{ptr @init_netsc520._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @init_netsc520._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/maps/netsc520.c", i32 94, i32 23}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/maps/netsc520.c", i32 96, i32 24}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/maps/netsc520.c", i32 98, i32 24}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/netsc520.c", i32 44, i32 14}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/maps/netsc520.c", i32 49, i32 14}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/netsc520.c", i32 54, i32 14}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/maps/netsc520.c", i32 59, i32 14}
!41 = !{ptr @partition_info, !42, !"partition_info", i1 false, i1 false}
!42 = !{!"../drivers/mtd/maps/netsc520.c", i32 42, i32 35}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
