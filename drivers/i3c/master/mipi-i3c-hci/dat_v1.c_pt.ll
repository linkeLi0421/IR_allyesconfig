; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/dat_v1.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/dat_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_dat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i3c_hci = type { %struct.i3c_master_controller, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.83, %struct.i3c_bus, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.78, %struct.anon.79, %struct.rw_semaphore }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }

@mipi_i3c_hci_dat_v1 = dso_local constant { %struct.hci_dat_ops, [60 x i8] } { %struct.hci_dat_ops { ptr @hci_dat_v1_init, ptr @hci_dat_v1_cleanup, ptr @hci_dat_v1_alloc_entry, ptr @hci_dat_v1_free_entry, ptr @hci_dat_v1_set_dynamic_addr, ptr @hci_dat_v1_set_static_addr, ptr @hci_dat_v1_set_flags, ptr @hci_dat_v1_clear_flags, ptr @hci_dat_v1_get_index }, [60 x i8] zeroinitializer }, align 32
@hci_dat_v1_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"only DAT in register space is supported at the moment\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hci_dat_v1_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/i3c/master/mipi-i3c-hci/dat_v1.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hci_dat_v1_init._entry_ptr = internal global ptr @hci_dat_v1_init._entry, section ".printk_index", align 4
@hci_dat_v1_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"only 8-bytes DAT entries are supported at the moment\0A\00", [42 x i8] zeroinitializer }, align 32
@hci_dat_v1_init._entry_ptr.7 = internal global ptr @hci_dat_v1_init._entry.5, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"mipi_i3c_hci_dat_v1\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 172, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 57, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [44 x i8] c"../drivers/i3c/master/mipi-i3c-hci/dat_v1.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 62, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @hci_dat_v1_init._entry, ptr @hci_dat_v1_init._entry.5, ptr @hci_dat_v1_init._entry_ptr, ptr @hci_dat_v1_init._entry_ptr.7, ptr @mipi_i3c_hci_dat_v1, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_i3c_hci_dat_v1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dat_v1_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hci_dat_v1_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dat_v1_init(ptr noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %DAT_entry_size = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 16
  %2 = ptrtoint ptr %DAT_entry_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DAT_entry_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.not = icmp eq i32 %3, 8
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  %DAT_entries = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 15
  %4 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DAT_entries, align 8
  %call = tail call ptr @bitmap_zalloc(i32 noundef %5, i32 noundef 3264) #4
  %DAT_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 17
  %6 = ptrtoint ptr %DAT_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %DAT_data, align 8
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %for.cond.preheader

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7
  %7 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %DAT_entries, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1337.not = icmp eq i32 %8, 0
  br i1 %cmp1337.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body14_crit_edge

for.cond.preheader.do.body14_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body14

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body14:                                        ; preds = %do.body14.do.body14_crit_edge, %for.cond.preheader.do.body14_crit_edge
  %dat_idx.038 = phi i32 [ %inc, %do.body14.do.body14_crit_edge ], [ 0, %for.cond.preheader.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %9 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx.038, 3
  %add.ptr = getelementptr i8, ptr %10, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  tail call void @arm_heavy_mb() #4
  %11 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %DAT_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %12, i32 4
  %add.ptr24 = getelementptr i8, ptr %add.ptr23, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #4, !srcloc !24
  %inc = add nuw i32 %dat_idx.038, 1
  %13 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %DAT_entries, align 8
  %cmp13 = icmp ult i32 %inc, %14
  br i1 %cmp13, label %do.body14.do.body14_crit_edge, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body14.do.body14_crit_edge:                    ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body14

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %hci, ptr noundef nonnull %.str.6.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body14.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -95, %cleanup.sink.split ], [ 0, %do.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_cleanup(ptr nocapture noundef %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 17
  %0 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_data, align 8
  tail call void @bitmap_free(ptr noundef %1) #4
  %2 = ptrtoint ptr %DAT_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %DAT_data, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dat_v1_alloc_entry(ptr nocapture noundef readonly %hci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 17
  %0 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_data, align 8
  %DAT_entries = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 15
  %2 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DAT_entries, align 8
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #4
  %4 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DAT_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp.not = icmp ult i32 %call, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %DAT_data, align 8
  %rem.i = and i32 %call, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call, 5
  %add.ptr.i = getelementptr i32, ptr %7, i32 %div2.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %9, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  tail call void @arm_heavy_mb() #4
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %10 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %call, 3
  %add.ptr = getelementptr i8, ptr %11, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 6291456) #4, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_free_entry(ptr nocapture noundef readonly %hci, i32 noundef %dat_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  %2 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %DAT_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 %mul
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #4, !srcloc !24
  %DAT_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 17
  %4 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %DAT_data, align 8
  %rem.i = and i32 %dat_idx, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %dat_idx, 5
  %add.ptr.i = getelementptr i32, ptr %5, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %7, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_set_dynamic_addr(ptr nocapture noundef readonly %hci, i32 noundef %dat_idx, i8 noundef zeroext %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !30
  %3 = and i32 %2, -65281
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv16 = zext i8 %address to i32
  %shl = shl nuw nsw i32 %conv16, 16
  %and17 = and i32 %shl, 8323072
  %or.i = or i32 %conv16, 128
  %shr.i = lshr i32 %or.i, 4
  %add.i = add nuw nsw i32 %shr.i, %or.i
  %shr1.i = lshr i32 %add.i, 2
  %add2.i = add nuw nsw i32 %shr1.i, %add.i
  %shr3.i = lshr i32 %add2.i, 1
  %add4.i = add nuw nsw i32 %shr3.i, %add2.i
  %and.i = shl i32 %add4.i, 23
  %5 = and i32 %and.i, 8388608
  %or = or i32 %5, %and17
  %or21 = or i32 %or, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %7 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %DAT_regs, align 4
  %add.ptr27 = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %6) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_set_static_addr(ptr nocapture noundef readonly %hci, i32 noundef %dat_idx, i8 noundef zeroext %address) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %3 = and i32 %2, -2130706433
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = and i8 %address, 127
  %and17 = zext i8 %5 to i32
  %or = or i32 %4, %and17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !33
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %7 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %DAT_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %8, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %6) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_set_flags(ptr nocapture noundef readonly %hci, i32 noundef %dat_idx, i32 noundef %w0_flags, i32 noundef %w1_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !34
  %4 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %DAT_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 %mul
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !29
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !35
  %or = or i32 %3, %w0_flags
  %or11 = or i32 %7, %w1_flags
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %DAT_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %10, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !37
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %12 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %DAT_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %13, i32 %mul
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %11) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_dat_v1_clear_flags(ptr nocapture noundef readonly %hci, i32 noundef %dat_idx, i32 noundef %w0_flags, i32 noundef %w1_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %0 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx, 3
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  %4 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %DAT_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 %mul
  %add.ptr7 = getelementptr i8, ptr %add.ptr6, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !29
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  %neg = xor i32 %w0_flags, -1
  %and = and i32 %3, %neg
  %neg11 = xor i32 %w1_flags, -1
  %and12 = and i32 %7, %neg11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !40
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %DAT_regs, align 4
  %add.ptr15 = getelementptr i8, ptr %10, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !41
  tail call void @arm_heavy_mb() #4
  %11 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %12 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %DAT_regs, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 %mul
  %add.ptr22 = getelementptr i8, ptr %add.ptr21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %11) #4, !srcloc !24
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_dat_v1_get_index(ptr nocapture noundef readonly %hci, i8 noundef zeroext %dev_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %DAT_data = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 17
  %0 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %DAT_data, align 8
  %DAT_entries = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 15
  %2 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %DAT_entries, align 8
  %call = tail call i32 @_find_next_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef 0) #4
  %DAT_regs = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 2
  %4 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %DAT_entries, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp31 = icmp ult i32 %call, %5
  br i1 %cmp31, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i8 %dev_addr to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dat_idx.032 = phi i32 [ %call, %for.body.lr.ph ], [ %call21, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %DAT_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %DAT_regs, align 4
  %mul = shl i32 %dat_idx.032, 3
  %add.ptr = getelementptr i8, ptr %7, i32 %mul
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !42
  %9 = lshr i32 %8, 8
  %shr = and i32 %9, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp17 = icmp eq i32 %shr, %conv
  br i1 %cmp17, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %10 = ptrtoint ptr %DAT_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %DAT_data, align 8
  %12 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %DAT_entries, align 8
  %add = add nuw i32 %dat_idx.032, 1
  %call21 = tail call i32 @_find_next_bit_be(ptr noundef %11, i32 noundef %13, i32 noundef %add) #4
  %14 = ptrtoint ptr %DAT_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %DAT_entries, align 8
  %cmp = icmp ult i32 %call21, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ], [ %dat_idx.032, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @mipi_i3c_hci_dat_v1, !1, !"mipi_i3c_hci_dat_v1", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/dat_v1.c", i32 172, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i3c/master/mipi-i3c-hci/dat_v1.c", i32 57, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @hci_dat_v1_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @hci_dat_v1_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i3c/master/mipi-i3c-hci/dat_v1.c", i32 62, i32 3}
!12 = !{ptr @hci_dat_v1_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hci_dat_v1_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2155598566}
!24 = !{i64 6878732}
!25 = !{i64 2155599028}
!26 = !{i64 2155599948}
!27 = !{i64 2155600624}
!28 = !{i64 2155601086}
!29 = !{i64 6879150}
!30 = !{i64 2155601871}
!31 = !{i64 2155651930}
!32 = !{i64 2155652709}
!33 = !{i64 2155697873}
!34 = !{i64 2155698652}
!35 = !{i64 2155699253}
!36 = !{i64 2155699534}
!37 = !{i64 2155700021}
!38 = !{i64 2155700804}
!39 = !{i64 2155701405}
!40 = !{i64 2155701686}
!41 = !{i64 2155702173}
!42 = !{i64 2155703353}
