; ModuleID = '/llk/IR_all_yes/drivers/pci/pcie/rcec.c_pt.bc'
source_filename = "../drivers/pci/pcie/rcec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.walk_rcec_data = type { ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.rcec_ea = type { i8, i8, i32 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@link_rcec_helper.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 12, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pcieportdrv\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"link_rcec_helper\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/pci/pcie/rcec.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PME & error events signaled via %s\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [27 x i8] c"../drivers/pci/pcie/rcec.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 49, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_link_rcec(ptr noundef %rcec) local_unnamed_addr #0 align 64 {
entry:
  %rcec_data = alloca %struct.walk_rcec_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rcec_data) #4
  %rcec_ea = getelementptr inbounds %struct.pci_dev, ptr %rcec, i32 0, i32 16
  %0 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcec_ea, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.walk_rcec_data, ptr %rcec_data, i32 0, i32 2
  %3 = getelementptr inbounds %struct.walk_rcec_data, ptr %rcec_data, i32 0, i32 1
  %4 = ptrtoint ptr %rcec_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rcec, ptr %rcec_data, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %rcec, i32 0, i32 1
  %7 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus2.i, align 8
  call void @pci_walk_bus(ptr noundef %8, ptr noundef nonnull @link_rcec_helper, ptr noundef nonnull %rcec_data) #4
  %9 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcec_ea, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %lastbusn6.i = getelementptr inbounds %struct.rcec_ea, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %lastbusn6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lastbusn6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp9.i = icmp eq i8 %14, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp15.not47.i = icmp ugt i8 %12, %14
  %or.cond50.i = select i1 %or.cond.i, i1 true, i1 %cmp15.not47.i
  br i1 %or.cond50.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %conv14.i = zext i8 %14 to i32
  %conv.i = zext i8 %12 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %bnr.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %15 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus2.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %number.i, align 4
  %conv18.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bnr.048.i, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %bnr.048.i, %conv18.i
  br i1 %cmp19.i, label %for.body.i.for.inc.i_crit_edge, label %if.end22.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 16
  %19 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %domain_nr.i.i, align 8
  %call24.i = call ptr @pci_find_bus(i32 noundef %20, i32 noundef %bnr.048.i) #4
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.for.inc.i_crit_edge, label %if.end27.i

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %call24.i, ptr noundef nonnull @link_rcec_helper, ptr noundef nonnull %rcec_data) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end27.i, %if.end22.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %bnr.048.i, 1
  %exitcond.i = icmp eq i32 %bnr.048.i, %conv14.i
  br i1 %exitcond.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rcec_data) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_rcec_helper(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %bitmap.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = and i16 %3, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %4)
  %cmp = icmp eq i16 %4, 144
  br i1 %cmp, label %land.lhs.true, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.i) #4
  %rcec_ea.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 16
  %5 = ptrtoint ptr %rcec_ea.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcec_ea.i, align 4
  %bitmap1.i = getelementptr inbounds %struct.rcec_ea, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bitmap1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitmap1.i, align 4
  %9 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bitmap.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %number.i, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus2.i, align 8
  %number3.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %number3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp.not.i = icmp eq i8 %13, %17
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap.i, i32 noundef 32, i32 noundef 0) #4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp618.i = icmp ult i32 %call.i, 32
  br i1 %cmp618.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rcec_assoc_rciep.exit_crit_edge

if.end.i.rcec_assoc_rciep.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcec_assoc_rciep.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %devn.019.i = phi i32 [ %call12.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %19, 3
  %and.i = and i32 %shr.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %devn.019.i, i32 %and.i)
  %cmp8.i = icmp eq i32 %devn.019.i, %and.i
  br i1 %cmp8.i, label %for.body.i.if.then_crit_edge, label %for.inc.i

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nuw nsw i32 %devn.019.i, 1
  %call12.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap.i, i32 noundef 32, i32 noundef %add.i) #4
  %cmp6.i = icmp ult i32 %call12.i, 32
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcec_assoc_rciep.exit_crit_edge

for.inc.i.rcec_assoc_rciep.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcec_assoc_rciep.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

rcec_assoc_rciep.exit:                            ; preds = %for.inc.i.rcec_assoc_rciep.exit_crit_edge, %if.end.i.rcec_assoc_rciep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.i) #4
  br label %if.end11

if.then:                                          ; preds = %for.body.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.i) #4
  %rcec3 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 17
  %20 = ptrtoint ptr %rcec3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %rcec3, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @link_rcec_helper.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@link_rcec_helper, %if.end11)) #4
          to label %if.then8 [label %if.end11], !srcloc !15

if.then8:                                         ; preds = %if.then
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then8.pci_name.exit_crit_edge

if.then8.pci_name.exit_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i ], [ %22, %if.then8.pci_name.exit_crit_edge ]
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @link_rcec_helper.__UNIQUE_ID_ddebug236, ptr noundef %dev9, ptr noundef nonnull @.str.3, ptr noundef %retval.0.i.i) #4
  br label %if.end11

if.end11:                                         ; preds = %pci_name.exit, %if.then, %rcec_assoc_rciep.exit, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcie_walk_rcec(ptr noundef %rcec, ptr noundef %cb, ptr noundef %userdata) local_unnamed_addr #0 align 64 {
entry:
  %rcec_data = alloca %struct.walk_rcec_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rcec_data) #4
  %rcec_ea = getelementptr inbounds %struct.pci_dev, ptr %rcec, i32 0, i32 16
  %0 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcec_ea, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = getelementptr inbounds %struct.walk_rcec_data, ptr %rcec_data, i32 0, i32 2
  %3 = getelementptr inbounds %struct.walk_rcec_data, ptr %rcec_data, i32 0, i32 1
  %4 = ptrtoint ptr %rcec_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rcec, ptr %rcec_data, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cb, ptr %3, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %userdata, ptr %2, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %rcec, i32 0, i32 1
  %7 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus2.i, align 8
  call void @pci_walk_bus(ptr noundef %8, ptr noundef nonnull @walk_rcec_helper, ptr noundef nonnull %rcec_data) #4
  %9 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcec_ea, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %lastbusn6.i = getelementptr inbounds %struct.rcec_ea, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %lastbusn6.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %lastbusn6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.i = icmp eq i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp9.i = icmp eq i8 %14, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp9.i, i1 false
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp15.not47.i = icmp ugt i8 %12, %14
  %or.cond50.i = select i1 %or.cond.i, i1 true, i1 %cmp15.not47.i
  br i1 %or.cond50.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %conv14.i = zext i8 %14 to i32
  %conv.i = zext i8 %12 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %bnr.048.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %15 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus2.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 12
  %17 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %number.i, align 4
  %conv18.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bnr.048.i, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %bnr.048.i, %conv18.i
  br i1 %cmp19.i, label %for.body.i.for.inc.i_crit_edge, label %if.end22.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end22.i:                                       ; preds = %for.body.i
  %domain_nr.i.i = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 16
  %19 = ptrtoint ptr %domain_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %domain_nr.i.i, align 8
  %call24.i = call ptr @pci_find_bus(i32 noundef %20, i32 noundef %bnr.048.i) #4
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.for.inc.i_crit_edge, label %if.end27.i

if.end22.i.for.inc.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end27.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @pci_walk_bus(ptr noundef nonnull %call24.i, ptr noundef nonnull @walk_rcec_helper, ptr noundef nonnull %rcec_data) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end27.i, %if.end22.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %bnr.048.i, 1
  %exitcond.i = icmp eq i32 %bnr.048.i, %conv14.i
  br i1 %exitcond.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rcec_data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @walk_rcec_helper(ptr noundef %dev, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %bitmap.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %2 = and i16 %1, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 144, i16 %2)
  %cmp = icmp eq i16 %2, 144
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap.i) #4
  %rcec_ea.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 16
  %5 = ptrtoint ptr %rcec_ea.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcec_ea.i, align 4
  %bitmap1.i = getelementptr inbounds %struct.rcec_ea, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bitmap1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bitmap1.i, align 4
  %9 = ptrtoint ptr %bitmap.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %bitmap.i, align 4
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 12
  %12 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %number.i, align 4
  %bus2.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %bus2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus2.i, align 8
  %number3.i = getelementptr inbounds %struct.pci_bus, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %number3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %number3.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp.not.i = icmp eq i8 %13, %17
  br i1 %cmp.not.i, label %if.end.i, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.end.i:                                         ; preds = %land.lhs.true
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap.i, i32 noundef 32, i32 noundef 0) #4
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i)
  %cmp618.i = icmp ult i32 %call.i, 32
  br i1 %cmp618.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.rcec_assoc_rciep.exit_crit_edge

if.end.i.rcec_assoc_rciep.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcec_assoc_rciep.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %devn.019.i = phi i32 [ %call12.i, %for.inc.i.for.body.i_crit_edge ], [ %call.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %19, 3
  %and.i = and i32 %shr.i, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %devn.019.i, i32 %and.i)
  %cmp8.i = icmp eq i32 %devn.019.i, %and.i
  br i1 %cmp8.i, label %for.body.i.if.then_crit_edge, label %for.inc.i

for.body.i.if.then_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

for.inc.i:                                        ; preds = %for.body.i
  %add.i = add nuw nsw i32 %devn.019.i, 1
  %call12.i = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap.i, i32 noundef 32, i32 noundef %add.i) #4
  %cmp6.i = icmp ult i32 %call12.i, 32
  br i1 %cmp6.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcec_assoc_rciep.exit_crit_edge

for.inc.i.rcec_assoc_rciep.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcec_assoc_rciep.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

rcec_assoc_rciep.exit:                            ; preds = %for.inc.i.rcec_assoc_rciep.exit_crit_edge, %if.end.i.rcec_assoc_rciep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.i) #4
  br label %if.end

if.then:                                          ; preds = %for.body.i.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap.i) #4
  %user_callback = getelementptr inbounds %struct.walk_rcec_data, ptr %data, i32 0, i32 1
  %20 = ptrtoint ptr %user_callback to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_callback, align 4
  %user_data = getelementptr inbounds %struct.walk_rcec_data, ptr %data, i32 0, i32 2
  %22 = ptrtoint ptr %user_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user_data, align 4
  %call3 = call i32 %21(ptr noundef %dev, ptr noundef %23) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %rcec_assoc_rciep.exit, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_rcec_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %hdr = alloca i32, align 4
  %busn = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr) #4
  %0 = ptrtoint ptr %hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hdr, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busn) #4
  %1 = ptrtoint ptr %busn to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %busn, align 4, !annotation !16
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %4 = and i16 %3, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 160, i16 %4)
  %cmp.not = icmp eq i16 %4, 160
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %dev, i32 noundef 7) #4
  %conv = zext i16 %call1 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 8) #7
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %add = add nuw nsw i32 %conv, 4
  %bitmap = getelementptr inbounds %struct.rcec_ea, ptr %call7.i.i, i32 0, i32 2
  %call8 = tail call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add, ptr noundef %bitmap) #4
  %call9 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %conv, ptr noundef nonnull %hdr) #4
  %6 = ptrtoint ptr %hdr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hdr, align 4
  %8 = and i32 %7, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not = icmp eq i32 %8, 0
  br i1 %cmp12.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %add15 = add nuw nsw i32 %conv, 8
  %call16 = call i32 @pci_read_config_dword(ptr noundef %dev, i32 noundef %add15, ptr noundef nonnull %busn) #4
  %9 = ptrtoint ptr %busn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %busn, align 4
  %shr17 = lshr i32 %10, 8
  %conv19 = trunc i32 %shr17 to i8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %call7.i.i, align 8
  %shr20 = lshr i32 %10, 16
  %conv22 = trunc i32 %shr20 to i8
  br label %if.end25

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %call7.i.i, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then14
  %conv22.sink = phi i8 [ 0, %if.else ], [ %conv22, %if.then14 ]
  %13 = getelementptr inbounds %struct.rcec_ea, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv22.sink, ptr %13, align 1
  %rcec_ea26 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %rcec_ea26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %rcec_ea26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busn) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_rcec_exit(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rcec_ea = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcec_ea, align 4
  tail call void @kfree(ptr noundef %1) #4
  %2 = ptrtoint ptr %rcec_ea to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rcec_ea, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_walk_bus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_find_bus(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/pcie/rcec.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @link_rcec_helper.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 2148694080, i64 2148694085, i64 2148694098, i64 2148694142, i64 2148694176, i64 2148694197}
!16 = !{!"auto-init"}
