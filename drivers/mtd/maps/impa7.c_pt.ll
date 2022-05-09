; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/impa7.c_pt.bc'
source_filename = "../drivers/mtd/maps/impa7.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.44 = type { i32, i32 }
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

@impa7_mtd = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@impa7_map = internal global { [2 x %struct.map_info], [40 x i8] } { [2 x %struct.map_info] [%struct.map_info { ptr @.str, i32 8388608, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }, %struct.map_info { ptr @.str.1, i32 8388608, i32 0, ptr null, ptr null, i32 0, i32 4, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null }], [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_impa7__172_110_init_impa76 = internal global ptr @init_impa7, section ".initcall6.init", align 4
@__exitcall_cleanup_impa7 = internal global ptr @cleanup_impa7, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [34 x i8] c"impa7.file=drivers/mtd/maps/impa7\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [18 x i8] c"impa7.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [43 x i8] c"impa7.author=Pavel Bartusek <pba@sysgo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [54 x i8] c"impa7.description=MTD map driver for implementa impA7\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"impA7 NOR Flash Bank #0\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"impA7 NOR Flash Bank #1\00", [40 x i8] zeroinitializer }, align 32
@init_impa7.pt = internal constant { [2 x %struct.anon.44], [16 x i8] } { [2 x %struct.anon.44] [%struct.anon.44 { i32 0, i32 8388608 }, %struct.anon.44 { i32 268435456, i32 8388608 }], [16 x i8] zeroinitializer }, align 32
@init_impa7._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015impA7:probing 0x%08lx at 0x%08lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init_impa7\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mtd/maps/impa7.c\00", [39 x i8] zeroinitializer }, align 32
@init_impa7._entry_ptr = internal global ptr @init_impa7._entry, section ".printk_index", align 4
@init_impa7._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"impA7:failed to ioremap\0A\00", [39 x i8] zeroinitializer }, align 32
@init_impa7._entry_ptr.7 = internal global ptr @init_impa7._entry.5, section ".printk_index", align 4
@rom_probe_types = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.8, ptr null], [24 x i8] zeroinitializer }, align 32
@partitions = internal constant { [1 x %struct.mtd_partition], [56 x i8] } { [1 x %struct.mtd_partition] [%struct.mtd_partition { ptr @.str.9, ptr null, i64 8388608, i64 0, i32 0, i32 0, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FileSystem\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"impa7_mtd\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 27, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"impa7_map\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 31, i32 24 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 33, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 38, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 60, i32 46 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 68, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 74, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"rom_probe_types\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 29, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 47, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 29, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/mtd/maps/impa7.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 50, i32 11 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_cleanup_impa7, ptr @__initcall__kmod_impa7__172_110_init_impa76, ptr @cleanup_impa7, ptr @init_impa7._entry, ptr @init_impa7._entry.5, ptr @init_impa7._entry_ptr, ptr @init_impa7._entry_ptr.7, ptr @impa7_mtd, ptr @impa7_map, ptr @.str, ptr @.str.1, ptr @init_impa7.pt, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @rom_probe_types, ptr @partitions, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impa7_mtd to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impa7_map to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_impa7.pt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_impa7._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_impa7._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rom_probe_types to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @partitions to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_impa7() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.012 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @impa7_mtd, i32 0, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 @mtd_device_unregister(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @map_destroy(ptr noundef %3) #3
  %virt = getelementptr [2 x %struct.map_info], ptr @impa7_map, i32 0, i32 %i.012, i32 3
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  tail call void @iounmap(ptr noundef %5) #3
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %virt, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

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
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_impa7() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.end

do.end:                                           ; preds = %for.inc37.do.end_crit_edge, %entry
  %devicesfound.069 = phi i32 [ 0, %entry ], [ %devicesfound.1, %for.inc37.do.end_crit_edge ]
  %i.068 = phi i32 [ 0, %entry ], [ %inc38, %for.inc37.do.end_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.anon.44], ptr @init_impa7.pt, i32 0, i32 %i.068
  %size = getelementptr [2 x %struct.anon.44], ptr @init_impa7.pt, i32 0, i32 %i.068, i32 1
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1, i32 noundef %3) #6
  %arrayidx4 = getelementptr [2 x %struct.map_info], ptr @impa7_map, i32 0, i32 %i.068
  %phys = getelementptr [2 x %struct.map_info], ptr @impa7_map, i32 0, i32 %i.068, i32 2
  %4 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %phys, align 4
  %call9 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %1) #3
  %virt = getelementptr [2 x %struct.map_info], ptr @impa7_map, i32 0, i32 %i.068, i32 3
  %5 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %virt, align 4
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %do.end15, label %if.end

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end:                                           ; preds = %do.end
  tail call void @simple_map_init(ptr noundef %arrayidx4) #3
  %arrayidx19 = getelementptr [2 x ptr], ptr @impa7_mtd, i32 0, i32 %i.068
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx19, align 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body24.land.rhs_crit_edge, %if.end
  %type.067 = phi ptr [ @rom_probe_types, %if.end ], [ %incdec.ptr, %for.body24.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %type.067 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %type.067, align 4
  %tobool23.not = icmp eq ptr %8, null
  br i1 %tobool23.not, label %if.else, label %for.body24

for.body24:                                       ; preds = %land.rhs
  %call26 = tail call ptr @do_map_probe(ptr noundef nonnull %8, ptr noundef %arrayidx4) #3
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call26, ptr %arrayidx19, align 4
  %incdec.ptr = getelementptr ptr, ptr %type.067, i32 1
  %tobool22.not = icmp eq ptr %call26, null
  br i1 %tobool22.not, label %for.body24.land.rhs_crit_edge, label %if.then30

for.body24.land.rhs_crit_edge:                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.rhs

if.then30:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #5
  %owner = getelementptr inbounds %struct.mtd_info, ptr %call26, i32 0, i32 55
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %inc = add i32 %devicesfound.069, 1
  %call33 = tail call i32 @mtd_device_parse_register(ptr noundef nonnull %call26, ptr noundef null, ptr noundef null, ptr noundef nonnull @partitions, i32 noundef 1) #3
  br label %for.inc37

if.else:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt, align 4
  tail call void @iounmap(ptr noundef %12) #3
  br label %for.inc37

for.inc37:                                        ; preds = %if.else, %if.then30
  %devicesfound.1 = phi i32 [ %inc, %if.then30 ], [ %devicesfound.069, %if.else ]
  %inc38 = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc38, 2
  br i1 %exitcond.not, label %for.end39, label %for.inc37.do.end_crit_edge

for.inc37.do.end_crit_edge:                       ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

for.end39:                                        ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %devicesfound.1)
  %cmp40 = icmp eq i32 %devicesfound.1, 0
  %cond = select i1 %cmp40, i32 -6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end39, %do.end15
  %retval.0 = phi i32 [ -5, %do.end15 ], [ %cond, %for.end39 ]
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_impa7__172_110_init_impa76, !1, !"__initcall__kmod_impa7__172_110_init_impa76", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/impa7.c", i32 110, i32 1}
!2 = !{ptr @__exitcall_cleanup_impa7, !3, !"__exitcall_cleanup_impa7", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/impa7.c", i32 111, i32 1}
!4 = !{ptr @__UNIQUE_ID_file173, !5, !"__UNIQUE_ID_file173", i1 false, i1 false}
!5 = !{!"../drivers/mtd/maps/impa7.c", i32 113, i32 1}
!6 = !{ptr @__UNIQUE_ID_license174, !5, !"__UNIQUE_ID_license174", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author175, !8, !"__UNIQUE_ID_author175", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/impa7.c", i32 114, i32 1}
!9 = !{ptr @__UNIQUE_ID_description176, !10, !"__UNIQUE_ID_description176", i1 false, i1 false}
!10 = !{!"../drivers/mtd/maps/impa7.c", i32 115, i32 1}
!11 = !{ptr @impa7_mtd, !12, !"impa7_mtd", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/impa7.c", i32 27, i32 25}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/impa7.c", i32 33, i32 11}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/impa7.c", i32 38, i32 11}
!17 = !{ptr @impa7_map, !18, !"impa7_map", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/impa7.c", i32 31, i32 24}
!19 = !{ptr @init_impa7.pt, !20, !"pt", i1 false, i1 false}
!20 = !{!"../drivers/mtd/maps/impa7.c", i32 60, i32 46}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mtd/maps/impa7.c", i32 68, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @init_impa7._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @init_impa7._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/maps/impa7.c", i32 74, i32 4}
!29 = !{ptr @init_impa7._entry.5, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @init_impa7._entry_ptr.7, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mtd/maps/impa7.c", i32 29, i32 49}
!33 = !{ptr @rom_probe_types, !34, !"rom_probe_types", i1 false, i1 false}
!34 = !{!"../drivers/mtd/maps/impa7.c", i32 29, i32 27}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/maps/impa7.c", i32 50, i32 11}
!37 = !{ptr @partitions, !38, !"partitions", i1 false, i1 false}
!38 = !{!"../drivers/mtd/maps/impa7.c", i32 47, i32 35}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
