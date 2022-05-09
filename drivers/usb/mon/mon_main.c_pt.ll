; ModuleID = '/llk/IR_all_yes/drivers/usb/mon/mon_main.c_pt.bc'
source_filename = "../drivers/usb/mon/mon_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mon_bus = type { %struct.list_head, %struct.spinlock, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.kref, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_mon_operations = type { ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.mon_reader = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mon_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@mon_lock = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mon_lock, i64 52), ptr getelementptr (i8, ptr @mon_lock, i64 52) }, ptr @mon_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mon_lock\00", [23 x i8] zeroinitializer }, align 32
@mon_bus0 = dso_local global { %struct.mon_bus, [56 x i8] } zeroinitializer, align 32
@mon_buses = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mon_buses, ptr @mon_buses }, [24 x i8] zeroinitializer }, align 32
@mon_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mon_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mon_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013usbmon: Outstanding opens (%d) on usb%d, leaking...\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mon_exit\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/mon/mon_main.c\00", [37 x i8] zeroinitializer }, align 32
@mon_exit._entry_ptr = internal global ptr @mon_exit._entry, section ".printk_index", align 4
@__initcall__kmod_usbmon__232_432_mon_init6 = internal global ptr @mon_init, section ".initcall6.init", align 4
@__exitcall_mon_exit = internal global ptr @mon_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [35 x i8] c"usbmon.file=drivers/usb/mon/usbmon\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [19 x i8] c"usbmon.license=GPL\00", section ".modinfo", align 1
@mon_bus_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mbus->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mon_ops_0 = internal constant { %struct.usb_mon_operations, [20 x i8] } { %struct.usb_mon_operations { ptr @mon_submit, ptr @mon_submit_error, ptr @mon_complete }, [20 x i8] zeroinitializer }, align 32
@mon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\015usbmon: unable to register with the core\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mon_init\00", [23 x i8] zeroinitializer }, align 32
@mon_init._entry_ptr = internal global ptr @mon_init._entry, section ".printk_index", align 4
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 4
@usb_bus_idr = external dso_local global %struct.idr, align 4
@mon_bus0_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.11 = private unnamed_addr constant [9 x i8] c"mon_lock\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 26, i32 1 }
@___asan_gen_.17 = private unnamed_addr constant [9 x i8] c"mon_bus0\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 28, i32 16 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"mon_buses\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 29, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"mon_nb\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 238, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 410, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 291, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [10 x i8] c"mon_ops_0\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 245, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 363, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private constant [30 x i8] c"../drivers/usb/mon/mon_main.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 318, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_mon_exit, ptr @__initcall__kmod_usbmon__232_432_mon_init6, ptr @mon_exit, ptr @mon_exit._entry, ptr @mon_exit._entry_ptr, ptr @mon_init._entry, ptr @mon_init._entry_ptr, ptr @.str, ptr @mon_lock, ptr @.str.1, ptr @mon_bus0, ptr @mon_buses, ptr @mon_nb, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mon_bus_init.__key, ptr @.str.5, ptr @mon_ops_0, ptr @.str.6, ptr @.str.7, ptr @mon_bus0_init.__key], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bus0 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_buses to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bus_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_ops_0 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mon_bus0_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_reader_add(ptr noundef %mbus, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 9
  %0 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nreaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %if.then, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %cmp7 = icmp eq ptr %mbus, @mon_bus0
  br i1 %cmp7, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then
  %p.026 = load ptr, ptr @mon_buses, align 4
  %cmp.i.not27 = icmp eq ptr %p.026, @mon_buses
  br i1 %cmp.i.not27, label %for.cond.preheader.if.end14_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end14_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %p.028 = phi ptr [ %p.0, %for.body.for.body_crit_edge ], [ %p.026, %for.cond.preheader.for.body_crit_edge ]
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %p.028, i32 0, i32 2
  %2 = ptrtoint ptr %u_bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %u_bus, align 4
  %monitored = getelementptr inbounds %struct.usb_bus, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %monitored to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %monitored, align 4
  %5 = ptrtoint ptr %p.028 to i32
  call void @__asan_load4_noabort(i32 %5)
  %p.0 = load ptr, ptr %p.028, align 4
  %cmp.i.not = icmp eq ptr %p.0, @mon_buses
  br i1 %cmp.i.not, label %for.body.if.end14_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %u_bus12 = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 2
  %6 = ptrtoint ptr %u_bus12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %u_bus12, align 4
  %monitored13 = getelementptr inbounds %struct.usb_bus, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %monitored13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %monitored13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %for.body.if.end14_crit_edge, %for.cond.preheader.if.end14_crit_edge, %entry.if.end14_crit_edge
  %9 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nreaders, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %nreaders, align 4
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %r, ptr noundef %12, ptr noundef %r_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end14.list_add_tail.exit_crit_edge

if.end14.list_add_tail.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %r, ptr %prev.i, align 4
  %14 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %r_list, ptr %r, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %r, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %r, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end14.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %ref = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !45

list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %list_add_tail.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !46

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %list_add_tail.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #8
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mon_reader_del(ptr noundef %mbus, ptr noundef %r) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %r) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %r, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %r, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %r, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 9
  %8 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nreaders, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %nreaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  br i1 %cmp6, label %if.then, label %list_del.exit.if.end_crit_edge

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  %cmp.i = icmp eq ptr %mbus, @mon_bus0
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %if.then
  %p.019.i = load ptr, ptr @mon_buses, align 4
  %cmp.i.not20.i = icmp eq ptr %p.019.i, @mon_buses
  br i1 %cmp.i.not20.i, label %for.cond.preheader.i.if.end_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %p.021.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.019.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %nreaders.i = getelementptr inbounds %struct.mon_bus, ptr %p.021.i, i32 0, i32 9
  %10 = ptrtoint ptr %nreaders.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nreaders.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp eq i32 %11, 0
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %u_bus.i = getelementptr inbounds %struct.mon_bus, ptr %p.021.i, i32 0, i32 2
  %12 = ptrtoint ptr %u_bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %u_bus.i, align 4
  %cmp2.not.i = icmp eq ptr %13, null
  br i1 %cmp2.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then3.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %monitored.i = getelementptr inbounds %struct.usb_bus, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %monitored.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %monitored.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then3.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %15 = ptrtoint ptr %p.021.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %p.0.i = load ptr, ptr %p.021.i, align 4
  %cmp.i.not.i = icmp eq ptr %p.0.i, @mon_buses
  br i1 %cmp.i.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %16 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i = icmp eq i32 %16, 0
  br i1 %cmp4.i, label %land.lhs.true5.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true5.i:                                 ; preds = %if.else.i
  %u_bus6.i = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 2
  %17 = ptrtoint ptr %u_bus6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %u_bus6.i, align 4
  %cmp7.not.i = icmp eq ptr %18, null
  br i1 %cmp7.not.i, label %land.lhs.true5.i.if.end_crit_edge, label %if.then8.i

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then8.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #10
  %monitored9.i = getelementptr inbounds %struct.usb_bus, ptr %18, i32 0, i32 18
  %19 = ptrtoint ptr %monitored9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %monitored9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  tail call void @arm_heavy_mb() #8
  br label %if.end

if.end:                                           ; preds = %if.then8.i, %land.lhs.true5.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %list_del.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %ref = getelementptr inbounds %struct.mon_bus, ptr %mbus, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @kfree(ptr noundef %mbus) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mon_bus_lookup(i32 noundef %num) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp eq i32 %num, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry.for.cond_crit_edge
  %p.0.in = phi ptr [ %p.0, %for.body.for.cond_crit_edge ], [ @mon_buses, %entry.for.cond_crit_edge ]
  %0 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.i.not = icmp eq ptr %p.0, @mon_buses
  br i1 %cmp.i.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %p.0, i32 0, i32 2
  %1 = ptrtoint ptr %u_bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %u_bus, align 4
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %busnum, align 4
  %cmp1 = icmp eq i32 %4, %num
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @mon_bus0, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %p.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mon_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usb_unregister_notify(ptr noundef nonnull @mon_nb) #8
  tail call void @usb_mon_deregister() #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #8
  %0 = load volatile ptr, ptr @mon_buses, align 4
  %cmp.i.not40 = icmp eq ptr %0, @mon_buses
  br i1 %cmp.i.not40, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %kref_put.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %1 = phi ptr [ %30, %kref_put.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %text_inited to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %text_inited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not = icmp eq i32 %11, 0
  br i1 %tobool1.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_text_del(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %bin_inited to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bin_inited, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not = icmp eq i32 %13, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_bin_del(ptr noundef %1) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %nreaders = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %nreaders to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nreaders, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %if.end4.if.end10_crit_edge, label %do.end

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end:                                           ; preds = %if.end4
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %u_bus to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %u_bus, align 4
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %busnum, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %19) #11
  %ref = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref, ptr %ref, i32 1, ptr elementtype(i32) %ref) #8, !srcloc !44
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !45

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %21 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %.not.i.i.i.i = icmp sgt i32 %21, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end10_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !46

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end10_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref, i32 noundef %.sink.i.i.i.i) #8
  br label %if.end10

if.end10:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end10_crit_edge, %if.end4.if.end10_crit_edge
  %u_bus11 = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %u_bus11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %u_bus11, align 4
  %monitored.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 18
  %24 = ptrtoint ptr %monitored.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %monitored.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end10.mon_dissolve.exit_crit_edge, label %if.then.i

if.end10.mon_dissolve.exit_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_dissolve.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %monitored.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %monitored.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  br label %mon_dissolve.exit

mon_dissolve.exit:                                ; preds = %if.then.i, %if.end10.mon_dissolve.exit_crit_edge
  %mon_bus.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 17
  %27 = ptrtoint ptr %mon_bus.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %mon_bus.i, align 4
  %28 = ptrtoint ptr %u_bus11 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %u_bus11, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %ref12 = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 11
  %call.i.i.i.i.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref12, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %ref12, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref12, ptr %ref12, i32 1, ptr elementtype(i32) %ref12) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i39, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %mon_dissolve.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i38 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i38, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !46

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref12, i32 noundef 3) #8
  br label %kref_put.exit

if.then.i39:                                      ; preds = %mon_dissolve.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @kfree(ptr noundef %1) #8
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i39, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %30 = load volatile ptr, ptr @mon_buses, align 4
  %cmp.i.not = icmp eq ptr %30, @mon_buses
  br i1 %cmp.i.not, label %kref_put.exit.while.end_crit_edge, label %kref_put.exit.while.body_crit_edge

kref_put.exit.while.body_crit_edge:               ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

kref_put.exit.while.end_crit_edge:                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %kref_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %31 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not = icmp eq i32 %31, 0
  br i1 %tobool15.not, label %while.end.if.end17_crit_edge, label %if.then16

while.end.if.end17_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_text_del(ptr noundef nonnull @mon_bus0) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %while.end.if.end17_crit_edge
  %32 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not = icmp eq i32 %32, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_bin_del(ptr noundef nonnull @mon_bus0) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end17.if.end21_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #8
  tail call void @mon_text_exit() #8
  tail call void @mon_bin_exit() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_unregister_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_mon_deregister() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_text_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_bin_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_text_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mon_bin_exit() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_init() #4 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #8
  %call = tail call i32 @mon_text_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mon_bin_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.err_bin_crit_edge

if.end.err_bin_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_bin

if.end4:                                          ; preds = %if.end
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 11), i32 noundef 4) #8
  store volatile i32 1, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 11), align 4
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1), ptr noundef nonnull @.str.5, ptr noundef nonnull @mon_bus0_init.__key, i16 noundef signext 3) #8
  store volatile ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), align 4
  store ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10, i32 1), align 4
  %call1.i = tail call i32 @mon_text_add(ptr noundef nonnull @mon_bus0, ptr noundef null) #8
  store i32 %call1.i, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 3), align 4
  %call2.i = tail call i32 @mon_bin_add(ptr noundef nonnull @mon_bus0, ptr noundef null) #8
  store i32 %call2.i, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 4), align 4
  %call5 = tail call i32 @usb_mon_register(ptr noundef nonnull @mon_ops_0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  tail call void @mon_bin_exit() #8
  br label %err_bin

if.end9:                                          ; preds = %if.end4
  tail call void @mutex_lock_nested(ptr noundef nonnull @usb_bus_idr_lock, i32 noundef 0) #8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call1014 = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %id) #8
  %cmp11.not15 = icmp eq ptr %call1014, null
  br i1 %cmp11.not15, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %call1016 = phi ptr [ %call10, %for.body.for.body_crit_edge ], [ %call1014, %if.end9.for.body_crit_edge ]
  call fastcc void @mon_bus_init(ptr noundef nonnull %call1016)
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  %add = add i32 %2, 1
  store i32 %add, ptr %id, align 4
  %call10 = call ptr @idr_get_next(ptr noundef nonnull @usb_bus_idr, ptr noundef nonnull %id) #8
  %cmp11.not = icmp eq ptr %call10, null
  br i1 %cmp11.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @usb_register_notify(ptr noundef nonnull @mon_nb) #8
  call void @mutex_unlock(ptr noundef nonnull @usb_bus_idr_lock) #8
  br label %cleanup

err_bin:                                          ; preds = %do.end, %if.end.err_bin_crit_edge
  %rc.0 = phi i32 [ %call1, %if.end.err_bin_crit_edge ], [ -19, %do.end ]
  tail call void @mon_text_exit() #8
  br label %cleanup

cleanup:                                          ; preds = %err_bin, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %rc.0, %err_bin ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mon_notify(ptr nocapture noundef readnone %self, i32 noundef %action, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call fastcc void @mon_bus_init(ptr noundef %dev) #8
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #8
  %1 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %sw.bb.sw.epilog.sink.split_crit_edge, label %if.then.i

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %monitored.i = getelementptr inbounds %struct.usb_bus, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %monitored.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %monitored.i, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  %mon_bus.i = getelementptr inbounds %struct.usb_bus, ptr %dev, i32 0, i32 17
  %3 = ptrtoint ptr %mon_bus.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mon_bus.i, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.bb1.list_del.exit.i_crit_edge

sw.bb1.list_del.exit.i_crit_edge:                 ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %sw.bb1.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %text_inited.i = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 3
  %13 = ptrtoint ptr %text_inited.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %text_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i3

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i3:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_text_del(ptr noundef %4) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i3, %list_del.exit.i.if.end.i_crit_edge
  %bin_inited.i = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 4
  %15 = ptrtoint ptr %bin_inited.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bin_inited.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then2.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mon_bin_del(ptr noundef %4) #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %monitored.i.i = getelementptr inbounds %struct.usb_bus, ptr %dev, i32 0, i32 18
  %17 = ptrtoint ptr %monitored.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %monitored.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i.i, label %if.end3.i.mon_dissolve.exit.i_crit_edge, label %if.then.i.i

if.end3.i.mon_dissolve.exit.i_crit_edge:          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_dissolve.exit.i

if.then.i.i:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %monitored.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %monitored.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  br label %mon_dissolve.exit.i

mon_dissolve.exit.i:                              ; preds = %if.then.i.i, %if.end3.i.mon_dissolve.exit.i_crit_edge
  %20 = ptrtoint ptr %mon_bus.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %mon_bus.i, align 4
  %u_bus.i.i = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %u_bus.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %u_bus.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %ref.i = getelementptr inbounds %struct.mon_bus, ptr %4, i32 0, i32 11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !48
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #8, !srcloc !49
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i11.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %mon_dissolve.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.sw.epilog.sink.split_crit_edge, label %if.then10.i.i.i.i.i, !prof !46

if.end5.i.i.i.i.i.sw.epilog.sink.split_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #8
  br label %sw.epilog.sink.split

if.then.i11.i:                                    ; preds = %mon_dissolve.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @kfree(ptr noundef %4) #8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then.i11.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.sw.epilog.sink.split_crit_edge, %if.then.i, %sw.bb.sw.epilog.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mon_bus_init(ptr noundef %ubus) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref, i32 noundef 4) #8
  %1 = ptrtoint ptr %ref to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %ref, align 4
  %lock = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mon_bus_init.__key, i16 noundef signext 3) #8
  %r_list = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 10
  %2 = ptrtoint ptr %r_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %r_list, ptr %r_list, align 4
  %prev.i = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %r_list, ptr %prev.i, align 8
  %u_bus = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %u_bus to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ubus, ptr %u_bus, align 4
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 17
  %5 = ptrtoint ptr %mon_bus to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %mon_bus, align 4
  %call2 = tail call i32 @mon_text_add(ptr noundef nonnull %call7.i.i, ptr noundef %ubus) #8
  %text_inited = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %text_inited to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %text_inited, align 8
  %call3 = tail call i32 @mon_bin_add(ptr noundef nonnull %call7.i.i, ptr noundef %ubus) #8
  %bin_inited = getelementptr inbounds %struct.mon_bus, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %bin_inited to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call3, ptr %bin_inited, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mon_lock, i32 noundef 0) #8
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mon_buses, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef nonnull @mon_buses) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @mon_buses, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mon_buses, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mon_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mon_text_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mon_bin_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mon_text_init() local_unnamed_addr #5 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @mon_bin_init() local_unnamed_addr #5 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_mon_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_register_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_submit(ptr nocapture noundef readonly %ubus, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 17
  %0 = ptrtoint ptr %mon_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_bus, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cnt_events.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cnt_events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_events.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %cnt_events.i, align 4
  %r_list.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %r_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.017.i = load ptr, ptr %r_list.i, align 4
  %cmp.i.not18.i = icmp eq ptr %pos.017.i, %r_list.i
  br i1 %cmp.i.not18.i, label %if.then.mon_bus_submit.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mon_bus_submit.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %pos.019.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.017.i, %if.then.for.body.i_crit_edge ]
  %rnf_submit.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 3
  %5 = ptrtoint ptr %rnf_submit.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rnf_submit.i, align 4
  %r_data.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 2
  %7 = ptrtoint ptr %r_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_data.i, align 4
  tail call void %6(ptr noundef %8, ptr noundef %urb) #8
  %9 = ptrtoint ptr %pos.019.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0.i = load ptr, ptr %pos.019.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %r_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mon_bus_submit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mon_bus_submit.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit.exit

mon_bus_submit.exit:                              ; preds = %for.body.i.mon_bus_submit.exit_crit_edge, %if.then.mon_bus_submit.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %mon_bus_submit.exit, %entry.if.end_crit_edge
  %call2.i3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1)) #8
  %10 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %inc.i4 = add i32 %10, 1
  store i32 %inc.i4, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %pos.017.i5 = load ptr, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), align 4
  %cmp.i.not18.i6 = icmp eq ptr %pos.017.i5, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not18.i6, label %if.end.mon_bus_submit.exit13_crit_edge, label %if.end.for.body.i12_crit_edge

if.end.for.body.i12_crit_edge:                    ; preds = %if.end
  br label %for.body.i12

if.end.mon_bus_submit.exit13_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit.exit13

for.body.i12:                                     ; preds = %for.body.i12.for.body.i12_crit_edge, %if.end.for.body.i12_crit_edge
  %pos.019.i7 = phi ptr [ %pos.0.i10, %for.body.i12.for.body.i12_crit_edge ], [ %pos.017.i5, %if.end.for.body.i12_crit_edge ]
  %rnf_submit.i8 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i7, i32 0, i32 3
  %11 = ptrtoint ptr %rnf_submit.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rnf_submit.i8, align 4
  %r_data.i9 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i7, i32 0, i32 2
  %13 = ptrtoint ptr %r_data.i9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r_data.i9, align 4
  tail call void %12(ptr noundef %14, ptr noundef %urb) #8
  %15 = ptrtoint ptr %pos.019.i7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pos.0.i10 = load ptr, ptr %pos.019.i7, align 4
  %cmp.i.not.i11 = icmp eq ptr %pos.0.i10, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not.i11, label %for.body.i12.mon_bus_submit.exit13_crit_edge, label %for.body.i12.for.body.i12_crit_edge

for.body.i12.for.body.i12_crit_edge:              ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i12

for.body.i12.mon_bus_submit.exit13_crit_edge:     ; preds = %for.body.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit.exit13

mon_bus_submit.exit13:                            ; preds = %for.body.i12.mon_bus_submit.exit13_crit_edge, %if.end.mon_bus_submit.exit13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1), i32 noundef %call2.i3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_submit_error(ptr nocapture noundef readonly %ubus, ptr noundef %urb, i32 noundef %error) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 17
  %0 = ptrtoint ptr %mon_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_bus, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cnt_events.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cnt_events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_events.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %cnt_events.i, align 4
  %r_list.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %r_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.017.i = load ptr, ptr %r_list.i, align 4
  %cmp.i.not18.i = icmp eq ptr %pos.017.i, %r_list.i
  br i1 %cmp.i.not18.i, label %if.then.mon_bus_submit_error.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mon_bus_submit_error.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit_error.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %pos.019.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.017.i, %if.then.for.body.i_crit_edge ]
  %rnf_error.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 4
  %5 = ptrtoint ptr %rnf_error.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rnf_error.i, align 4
  %r_data.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 2
  %7 = ptrtoint ptr %r_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_data.i, align 4
  tail call void %6(ptr noundef %8, ptr noundef %urb, i32 noundef %error) #8
  %9 = ptrtoint ptr %pos.019.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0.i = load ptr, ptr %pos.019.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %r_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mon_bus_submit_error.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mon_bus_submit_error.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit_error.exit

mon_bus_submit_error.exit:                        ; preds = %for.body.i.mon_bus_submit_error.exit_crit_edge, %if.then.mon_bus_submit_error.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %mon_bus_submit_error.exit, %entry.if.end_crit_edge
  %call2.i4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1)) #8
  %10 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %inc.i5 = add i32 %10, 1
  store i32 %inc.i5, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %pos.017.i6 = load ptr, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), align 4
  %cmp.i.not18.i7 = icmp eq ptr %pos.017.i6, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not18.i7, label %if.end.mon_bus_submit_error.exit14_crit_edge, label %if.end.for.body.i13_crit_edge

if.end.for.body.i13_crit_edge:                    ; preds = %if.end
  br label %for.body.i13

if.end.mon_bus_submit_error.exit14_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit_error.exit14

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %if.end.for.body.i13_crit_edge
  %pos.019.i8 = phi ptr [ %pos.0.i11, %for.body.i13.for.body.i13_crit_edge ], [ %pos.017.i6, %if.end.for.body.i13_crit_edge ]
  %rnf_error.i9 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i8, i32 0, i32 4
  %11 = ptrtoint ptr %rnf_error.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rnf_error.i9, align 4
  %r_data.i10 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i8, i32 0, i32 2
  %13 = ptrtoint ptr %r_data.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r_data.i10, align 4
  tail call void %12(ptr noundef %14, ptr noundef %urb, i32 noundef %error) #8
  %15 = ptrtoint ptr %pos.019.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pos.0.i11 = load ptr, ptr %pos.019.i8, align 4
  %cmp.i.not.i12 = icmp eq ptr %pos.0.i11, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not.i12, label %for.body.i13.mon_bus_submit_error.exit14_crit_edge, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i13

for.body.i13.mon_bus_submit_error.exit14_crit_edge: ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_submit_error.exit14

mon_bus_submit_error.exit14:                      ; preds = %for.body.i13.mon_bus_submit_error.exit14_crit_edge, %if.end.mon_bus_submit_error.exit14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1), i32 noundef %call2.i4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mon_complete(ptr nocapture noundef readonly %ubus, ptr noundef %urb, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mon_bus = getelementptr inbounds %struct.usb_bus, ptr %ubus, i32 0, i32 17
  %0 = ptrtoint ptr %mon_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_bus, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %cnt_events.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cnt_events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt_events.i, align 4
  %inc.i = add i32 %3, 1
  store i32 %inc.i, ptr %cnt_events.i, align 4
  %r_list.i = getelementptr inbounds %struct.mon_bus, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %r_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.017.i = load ptr, ptr %r_list.i, align 4
  %cmp.i.not18.i = icmp eq ptr %pos.017.i, %r_list.i
  br i1 %cmp.i.not18.i, label %if.then.mon_bus_complete.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.mon_bus_complete.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_complete.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %pos.019.i = phi ptr [ %pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %pos.017.i, %if.then.for.body.i_crit_edge ]
  %rnf_complete.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 5
  %5 = ptrtoint ptr %rnf_complete.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rnf_complete.i, align 4
  %r_data.i = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i, i32 0, i32 2
  %7 = ptrtoint ptr %r_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %r_data.i, align 4
  tail call void %6(ptr noundef %8, ptr noundef %urb, i32 noundef %status) #8
  %9 = ptrtoint ptr %pos.019.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %pos.0.i = load ptr, ptr %pos.019.i, align 4
  %cmp.i.not.i = icmp eq ptr %pos.0.i, %r_list.i
  br i1 %cmp.i.not.i, label %for.body.i.mon_bus_complete.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.mon_bus_complete.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_complete.exit

mon_bus_complete.exit:                            ; preds = %for.body.i.mon_bus_complete.exit_crit_edge, %if.then.mon_bus_complete.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  br label %if.end

if.end:                                           ; preds = %mon_bus_complete.exit, %entry.if.end_crit_edge
  %call2.i4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1)) #8
  %10 = load i32, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %inc.i5 = add i32 %10, 1
  store i32 %inc.i5, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 12), align 4
  %pos.017.i6 = load ptr, ptr getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10), align 4
  %cmp.i.not18.i7 = icmp eq ptr %pos.017.i6, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not18.i7, label %if.end.mon_bus_complete.exit14_crit_edge, label %if.end.for.body.i13_crit_edge

if.end.for.body.i13_crit_edge:                    ; preds = %if.end
  br label %for.body.i13

if.end.mon_bus_complete.exit14_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_complete.exit14

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %if.end.for.body.i13_crit_edge
  %pos.019.i8 = phi ptr [ %pos.0.i11, %for.body.i13.for.body.i13_crit_edge ], [ %pos.017.i6, %if.end.for.body.i13_crit_edge ]
  %rnf_complete.i9 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i8, i32 0, i32 5
  %11 = ptrtoint ptr %rnf_complete.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rnf_complete.i9, align 4
  %r_data.i10 = getelementptr inbounds %struct.mon_reader, ptr %pos.019.i8, i32 0, i32 2
  %13 = ptrtoint ptr %r_data.i10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %r_data.i10, align 4
  tail call void %12(ptr noundef %14, ptr noundef %urb, i32 noundef %status) #8
  %15 = ptrtoint ptr %pos.019.i8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %pos.0.i11 = load ptr, ptr %pos.019.i8, align 4
  %cmp.i.not.i12 = icmp eq ptr %pos.0.i11, getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 10)
  br i1 %cmp.i.not.i12, label %for.body.i13.mon_bus_complete.exit14_crit_edge, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i13

for.body.i13.mon_bus_complete.exit14_crit_edge:   ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mon_bus_complete.exit14

mon_bus_complete.exit14:                          ; preds = %for.body.i13.mon_bus_complete.exit14_crit_edge, %if.end.mon_bus_complete.exit14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef getelementptr inbounds (%struct.mon_bus, ptr @mon_bus0, i32 0, i32 1), i32 noundef %call2.i4) #8
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !29, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mon/mon_main.c", i32 26, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mon_lock, !1, !"mon_lock", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/mon/mon_main.c", i32 410, i32 4}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mon_exit._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mon_exit._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__initcall__kmod_usbmon__232_432_mon_init6, !11, !"__initcall__kmod_usbmon__232_432_mon_init6", i1 false, i1 false}
!11 = !{!"../drivers/usb/mon/mon_main.c", i32 432, i32 1}
!12 = !{ptr @__exitcall_mon_exit, !13, !"__exitcall_mon_exit", i1 false, i1 false}
!13 = !{!"../drivers/usb/mon/mon_main.c", i32 433, i32 1}
!14 = !{ptr @__UNIQUE_ID_file233, !15, !"__UNIQUE_ID_file233", i1 false, i1 false}
!15 = !{!"../drivers/usb/mon/mon_main.c", i32 435, i32 1}
!16 = !{ptr @__UNIQUE_ID_license234, !15, !"__UNIQUE_ID_license234", i1 false, i1 false}
!17 = !{ptr @mon_bus0, !18, !"mon_bus0", i1 false, i1 false}
!18 = !{!"../drivers/usb/mon/mon_main.c", i32 28, i32 16}
!19 = !{ptr @mon_buses, !20, !"mon_buses", i1 false, i1 false}
!20 = !{!"../drivers/usb/mon/mon_main.c", i32 29, i32 8}
!21 = !{ptr @mon_nb, !22, !"mon_nb", i1 false, i1 false}
!22 = !{!"../drivers/usb/mon/mon_main.c", i32 238, i32 30}
!23 = !{ptr @mon_bus_init.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/usb/mon/mon_main.c", i32 291, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/mon/mon_main.c", i32 363, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mon_init._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mon_init._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mon_bus0_init.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/usb/mon/mon_main.c", i32 318, i32 2}
!33 = !{ptr @mon_ops_0, !34, !"mon_ops_0", i1 false, i1 false}
!34 = !{!"../drivers/usb/mon/mon_main.c", i32 245, i32 40}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2148218614, i64 2148218646, i64 2148218675, i64 2148218709, i64 2148218740, i64 2148218763}
!45 = !{!"branch_weights", i32 1, i32 2000}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 2153953188}
!48 = !{i64 2148306615}
!49 = !{i64 2148221079, i64 2148221111, i64 2148221140, i64 2148221174, i64 2148221205, i64 2148221228}
!50 = !{i64 2149313063}
!51 = !{i64 2153953426}
!52 = !{i64 2153953593}
