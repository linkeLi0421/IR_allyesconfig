; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_msg.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.enetc_pf = type { ptr, i32, i32, ptr, [6 x %struct.enetc_mac_filter], [2 x %struct.enetc_msg_swbd], %struct.work_struct, [24 x i8], i8, [2 x i32], [128 x i32], ptr, ptr, ptr, i32, %struct.phylink_config }
%struct.enetc_mac_filter = type { %union.anon.118, i32 }
%union.anon.118 = type { [2 x i32] }
%struct.enetc_msg_swbd = type { ptr, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s-vfmsg\00", [23 x i8] zeroinitializer }, align 32
@enetc_msg_psi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PSI messaging: request_irq() failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_msg_psi_init\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_msg.c\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_msg_psi_init._entry_ptr = internal global ptr @enetc_msg_psi_init._entry, section ".printk_index", align 4
@enetc_msg_psi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&pf->msg_task)\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@enetc_msg_alloc_mbx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 80, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"msg: fail to alloc dma buffer of size: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"enetc_msg_alloc_mbx\00", [44 x i8] zeroinitializer }, align 32
@enetc_msg_alloc_mbx._entry_ptr = internal global ptr @enetc_msg_alloc_mbx._entry, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 113, i32 55 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 118, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 127, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [52 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_msg.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 79, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @enetc_msg_alloc_mbx._entry, ptr @enetc_msg_alloc_mbx._entry_ptr, ptr @enetc_msg_psi_init._entry, ptr @enetc_msg_psi_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @enetc_msg_psi_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_psi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_psi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_alloc_mbx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @enetc_msg_psi_init(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %msg_int_name = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 7
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %msg_int_name, i32 noundef 24, ptr noundef nonnull @.str, ptr noundef %3)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call3 = tail call i32 @pci_irq_vector(ptr noundef %5, i32 noundef 0) #6
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef nonnull @enetc_msg_psi_msix, ptr noundef null, i32 noundef 0, ptr noundef %msg_int_name, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 2608
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %msg_task = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6
  tail call void @__init_work(ptr noundef %msg_task, i32 noundef 0) #6
  %10 = ptrtoint ptr %msg_task to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %msg_task, align 4
  %lockdep_map = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @enetc_msg_psi_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry12 = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @enetc_msg_task, ptr %func, align 4
  %num_vfs = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 1
  %14 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp68 = icmp sgt i32 %15, 0
  br i1 %cmp68, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 96
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %arrayidx.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.069
  %size.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.069, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1024, ptr %size.i, align 4
  %dma.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.069, i32 1
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i, i32 noundef 1024, ptr noundef %dma.i, i32 noundef 3264, i32 noundef 0) #6
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %enetc_msg_alloc_mbx.exit, label %for.inc

enetc_msg_alloc_mbx.exit:                         ; preds = %for.body
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.7, i32 noundef %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.069)
  %cmp2271.not = icmp eq i32 %i.069, 0
  br i1 %cmp2271.not, label %enetc_msg_alloc_mbx.exit.for.end26_crit_edge, label %enetc_msg_alloc_mbx.exit.for.body23_crit_edge

enetc_msg_alloc_mbx.exit.for.body23_crit_edge:    ; preds = %enetc_msg_alloc_mbx.exit
  br label %for.body23

enetc_msg_alloc_mbx.exit.for.end26_crit_edge:     ; preds = %enetc_msg_alloc_mbx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.inc:                                          ; preds = %for.body
  %22 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma.i, align 4
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %mul.i = shl i32 %i.069, 3
  %add.i = add i32 %mul.i, 528
  %add.ptr.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add12.i = add i32 %mul.i, 532
  %add.ptr13.i = getelementptr i8, ptr %28, i32 %add12.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %inc = add nuw nsw i32 %i.069, 1
  %29 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_vfs, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  %add.ptr.i57 = getelementptr i8, ptr %32, i32 2560
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %35, i32 2560
  %36 = or i32 %33, 100663296
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %36) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  br label %cleanup

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %enetc_msg_alloc_mbx.exit.for.body23_crit_edge
  %i.172.in = phi i32 [ %i.172, %for.body23.for.body23_crit_edge ], [ %i.069, %enetc_msg_alloc_mbx.exit.for.body23_crit_edge ]
  %i.172 = add nsw i32 %i.172.in, -1
  %arrayidx.i59 = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.172
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %size.i60 = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.172, i32 2
  %39 = ptrtoint ptr %size.i60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.i60, align 4
  %41 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i59, align 4
  %dma.i61 = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.172, i32 1
  %43 = ptrtoint ptr %dma.i61 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma.i61, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %40, ptr noundef %42, i32 noundef %44, i32 noundef 0) #6
  %45 = call ptr @memset(ptr %arrayidx.i59, i32 0, i32 12)
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %mul.i62 = shl i32 %i.172, 3
  %add.i63 = add i32 %mul.i62, 528
  %add.ptr.i64 = getelementptr i8, ptr %47, i32 %add.i63
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %add4.i = add i32 %mul.i62, 532
  %add.ptr5.i = getelementptr i8, ptr %49, i32 %add4.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %cmp22 = icmp sgt i32 %i.172.in, 1
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end26_crit_edge

for.body23.for.end26_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

for.end26:                                        ; preds = %for.body23.for.end26_crit_edge, %enetc_msg_alloc_mbx.exit.for.end26_crit_edge
  %call27 = tail call ptr @free_irq(i32 noundef %call3, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %for.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -12, %for.end26 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_msg_psi_msix(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.enetc_si, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i3 = getelementptr i8, ptr %1, i32 2560
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 2560
  %5 = and i32 %2, -100663297
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %5) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %msg_task = getelementptr i8, ptr %data, i32 208
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %msg_task) #6
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_msg_task(ptr noundef %work) #0 align 64 {
entry:
  %msg_code = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %hw1 = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %add.ptr233 = getelementptr i8, ptr %3, i32 516
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %4 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #6, !srcloc !29
  %5 = lshr i32 %4, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %and34 = and i32 %5, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool.not35 = icmp eq i32 %and34, 0
  br i1 %tobool.not35, label %entry.if.then_crit_edge, label %for.cond5.preheader.lr.ph

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond5.preheader.lr.ph:                        ; preds = %entry
  %num_vfs = getelementptr i8, ptr %work, i32 -108
  br label %for.cond5.preheader

for.cond.loopexit:                                ; preds = %cleanup.for.cond.loopexit_crit_edge, %for.cond5.preheader.for.cond.loopexit_crit_edge
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 516
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !29
  %9 = lshr i32 %8, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %and = and i32 %9, 6
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.cond.loopexit.if.then_crit_edge, label %for.cond.loopexit.for.cond5.preheader_crit_edge

for.cond.loopexit.for.cond5.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.cond.loopexit.if.then_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.cond5.preheader:                              ; preds = %for.cond.loopexit.for.cond5.preheader_crit_edge, %for.cond5.preheader.lr.ph
  %and36 = phi i32 [ %and34, %for.cond5.preheader.lr.ph ], [ %and, %for.cond.loopexit.for.cond5.preheader_crit_edge ]
  %10 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp31 = icmp sgt i32 %11, 0
  br i1 %cmp31, label %for.cond5.preheader.for.body_crit_edge, label %for.cond5.preheader.for.cond.loopexit_crit_edge

for.cond5.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

for.cond5.preheader.for.body_crit_edge:           ; preds = %for.cond5.preheader
  br label %for.body

if.then:                                          ; preds = %for.cond.loopexit.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1, align 4
  %add.ptr4 = getelementptr i8, ptr %13, i32 2568
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 100663296) #6, !srcloc !28
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 2560
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !29
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %17 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw1, align 4
  %add.ptr2.i = getelementptr i8, ptr %18, i32 2560
  %19 = or i32 %16, 100663296
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %19) #6, !srcloc !28
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  ret void

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond5.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %add, %cleanup.for.body_crit_edge ], [ 0, %for.cond5.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %msg_code) #6
  %20 = ptrtoint ptr %msg_code to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %msg_code, align 2, !annotation !31
  %add = add nuw nsw i32 %i.032, 1
  %shl = shl i32 2, %i.032
  %and6 = and i32 %shl, %and36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %for.body.cleanup_crit_edge, label %if.end9

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @enetc_msg_handle_rxmsg(ptr noundef %add.ptr, i32 noundef %i.032, ptr noundef nonnull %msg_code) #6
  %21 = ptrtoint ptr %msg_code to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg_code, align 2
  %conv = zext i16 %22 to i32
  %shl10 = shl nuw i32 %conv, 16
  %or = or i32 %shl10, %shl
  %23 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw1, align 4
  %add.ptr14 = getelementptr i8, ptr %24, i32 516
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  call void @arm_heavy_mb() #6
  %25 = call i32 @llvm.bswap.i32(i32 %or) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %25) #6, !srcloc !28
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %msg_code) #6
  %26 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_vfs, align 4
  %cmp = icmp slt i32 %add, %27
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.cond.loopexit_crit_edge

cleanup.for.cond.loopexit_crit_edge:              ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @enetc_msg_psi_free(ptr noundef %pf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pf, align 4
  %msg_task = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 6
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %msg_task) #6
  %hw = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2560
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 2560
  %7 = and i32 %4, -100663297
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %num_vfs = getelementptr inbounds %struct.enetc_pf, ptr %pf, i32 0, i32 1
  %8 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp sgt i32 %9, 0
  br i1 %cmp12, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 96
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.013
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %size.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.013, i32 2
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size.i, align 4
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %dma.i = getelementptr %struct.enetc_pf, ptr %add.ptr.i.i, i32 0, i32 5, i32 %i.013, i32 1
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 0) #6
  %18 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 12)
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %mul.i = shl i32 %i.013, 3
  %add.i = add i32 %mul.i, 528
  %add.ptr.i11 = getelementptr i8, ptr %20, i32 %add.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add4.i = add i32 %mul.i, 532
  %add.ptr5.i = getelementptr i8, ptr %22, i32 %add4.i
  tail call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #6, !srcloc !28
  tail call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %inc = add nuw nsw i32 %i.013, 1
  %23 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_vfs, align 4
  %cmp = icmp slt i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @pci_irq_vector(ptr noundef %26, i32 noundef 0) #6
  %call3 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_msg_handle_rxmsg(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_msg.c", i32 113, i32 55}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_msg.c", i32 118, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @enetc_msg_psi_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @enetc_msg_psi_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @enetc_msg_psi_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_msg.c", i32 127, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_msg.c", i32 79, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @enetc_msg_alloc_mbx._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @enetc_msg_alloc_mbx._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152538797}
!28 = !{i64 4996675}
!29 = !{i64 4997093}
!30 = !{i64 2152537442}
!31 = !{!"auto-init"}
