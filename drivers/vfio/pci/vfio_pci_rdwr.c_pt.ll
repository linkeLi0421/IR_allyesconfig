; ModuleID = '/llk/IR_all_yes/drivers/vfio/pci/vfio_pci_rdwr.c_pt.bc'
source_filename = "../drivers/vfio/pci/vfio_pci_rdwr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vfio_pci_core_device = type { %struct.vfio_device, ptr, [6 x ptr], [6 x i8], ptr, ptr, ptr, %struct.spinlock, %struct.mutex, ptr, i32, i32, i32, ptr, i8, i8, i16, i32, [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, i32, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, ptr, %struct.notifier_block, %struct.mutex, %struct.list_head, %struct.rw_semaphore }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_pci_ioeventfd = type { %struct.list_head, ptr, ptr, ptr, i64, i64, i32, i32, i8 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vfio\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [46 x i64] [i64 44, i64 32, i64 944, i64 945, i64 946, i64 947, i64 948, i64 949, i64 950, i64 951, i64 952, i64 953, i64 954, i64 955, i64 960, i64 961, i64 962, i64 963, i64 964, i64 965, i64 966, i64 967, i64 968, i64 969, i64 970, i64 971, i64 972, i64 973, i64 974, i64 975, i64 976, i64 977, i64 978, i64 979, i64 980, i64 981, i64 982, i64 983, i64 984, i64 985, i64 986, i64 987, i64 988, i64 989, i64 990, i64 991]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.7 = private constant [36 x i8] c"../drivers/vfio/pci/vfio_pci_rdwr.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 212, i32 53 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 156, i32 2 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.3], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_bar_rw(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i1 noundef zeroext %iswrite) local_unnamed_addr #0 align 64 {
entry:
  %x_start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  %and = and i64 %3, 1099511627775
  %shr = ashr i64 %3, 40
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x_start) #6
  %4 = ptrtoint ptr %x_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %x_start, align 4
  %arrayidx4 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %cmp15 = icmp eq i32 %conv, 6
  br i1 %cmp15, label %land.lhs.true, label %if.else.cleanup74_crit_edge

if.else.cleanup74_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

land.lhs.true:                                    ; preds = %if.else
  %flags = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 6, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and19 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 131072, i64 %and)
  %cmp25.not126 = icmp ult i64 %and, 131072
  %or.cond = select i1 %tobool20.not, i1 %cmp25.not126, i1 false
  br i1 %or.cond, label %if.end28.thread, label %land.lhs.true.cleanup74_crit_edge

land.lhs.true.cleanup74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end23:                                         ; preds = %entry
  %end7 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv, i32 1
  %9 = ptrtoint ptr %end7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %sub = sub i32 1, %6
  %add = add i32 %sub, %10
  %cond = select i1 %cmp, i32 0, i32 %add
  %conv24 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv24)
  %cmp25.not = icmp ult i64 %and, %conv24
  br i1 %cmp25.not, label %if.end28, label %if.end23.cleanup74_crit_edge

if.end23.cleanup74_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end28.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %11 = trunc i64 %3 to i32
  %conv31129 = sub i32 131072, %11
  %12 = tail call i32 @llvm.umin.i32(i32 %conv31129, i32 %count)
  br label %if.then40

if.end28:                                         ; preds = %if.end23
  %13 = trunc i64 %3 to i32
  %conv31 = sub i32 %cond, %13
  %14 = tail call i32 @llvm.umin.i32(i32 %conv31, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %conv)
  %cmp38 = icmp eq i32 %conv, 6
  br i1 %cmp38, label %if.end28.if.then40_crit_edge, label %if.else44

if.end28.if.then40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then40:                                        ; preds = %if.end28.if.then40_crit_edge, %if.end28.thread
  %count.conv31135 = phi i32 [ %12, %if.end28.thread ], [ %14, %if.end28.if.then40_crit_edge ]
  %end.0127133 = phi i32 [ 131072, %if.end28.thread ], [ %cond, %if.end28.if.then40_crit_edge ]
  %call = call ptr @pci_map_rom(ptr noundef %1, ptr noundef nonnull %x_start) #6
  %tobool41.not = icmp eq ptr %call, null
  br i1 %tobool41.not, label %if.then40.cleanup74_crit_edge, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then40.cleanup74_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.else44:                                        ; preds = %if.end28
  %arrayidx.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 2, i32 %conv
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.else44.cleanup_crit_edge

if.else44.cleanup_crit_edge:                      ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.else44
  %shl.i = shl nuw i32 1, %conv
  %call.i = tail call i32 @pci_request_selected_regions(ptr noundef %1, i32 noundef %shl.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup74_crit_edge

if.end.i.cleanup74_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @pci_iomap(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_release_selected_regions(ptr noundef %1, i32 noundef %shl.i) #6
  br label %cleanup74

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %arrayidx.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9.i, %if.else44.cleanup_crit_edge
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  br label %if.end50

if.end50:                                         ; preds = %cleanup, %if.then40.if.end50_crit_edge
  %cmp38136 = phi i1 [ false, %cleanup ], [ true, %if.then40.if.end50_crit_edge ]
  %count.conv31134 = phi i32 [ %14, %cleanup ], [ %count.conv31135, %if.then40.if.end50_crit_edge ]
  %x_end.0 = phi i32 [ 0, %cleanup ], [ %end.0127133, %if.then40.if.end50_crit_edge ]
  %io.1 = phi ptr [ %19, %cleanup ], [ %call, %if.then40.if.end50_crit_edge ]
  %msix_bar = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 15
  %20 = ptrtoint ptr %msix_bar to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %msix_bar, align 1
  %conv51 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv51)
  %cmp52 = icmp eq i32 %conv, %conv51
  br i1 %cmp52, label %if.then54, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %msix_offset = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 17
  %22 = ptrtoint ptr %msix_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msix_offset, align 4
  %24 = ptrtoint ptr %x_start to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %x_start, align 4
  %msix_size = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 16
  %25 = ptrtoint ptr %msix_size to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %msix_size, align 2
  %conv56 = zext i16 %26 to i32
  %add57 = add i32 %23, %conv56
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end50.if.end58_crit_edge
  %x_end.1 = phi i32 [ %add57, %if.then54 ], [ %x_end.0, %if.end50.if.end58_crit_edge ]
  %flags59 = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv, i32 3
  %27 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags59, align 4
  %and60 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61 = icmp ne i32 %and60, 0
  %29 = ptrtoint ptr %x_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x_start, align 4
  %call63 = call fastcc i32 @do_io_rw(ptr noundef %vdev, i1 noundef zeroext %tobool61, ptr noundef %io.1, ptr noundef %buf, i64 noundef %and, i32 noundef %count.conv31134, i32 noundef %30, i32 noundef %x_end.1, i1 noundef zeroext %iswrite)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call63)
  %cmp64 = icmp sgt i32 %call63, -1
  br i1 %cmp64, label %if.then66, label %if.end58.if.end69_crit_edge

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then66:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %conv67144 = zext i32 %call63 to i64
  %31 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ppos, align 8
  %add68 = add i64 %32, %conv67144
  store i64 %add68, ptr %ppos, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.end58.if.end69_crit_edge
  br i1 %cmp38136, label %if.then72, label %if.end69.cleanup74_crit_edge

if.end69.cleanup74_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.then72:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_unmap_rom(ptr noundef %1, ptr noundef %io.1) #6
  br label %cleanup74

cleanup74:                                        ; preds = %if.then72, %if.end69.cleanup74_crit_edge, %if.then7.i, %if.end.i.cleanup74_crit_edge, %if.then40.cleanup74_crit_edge, %if.end23.cleanup74_crit_edge, %land.lhs.true.cleanup74_crit_edge, %if.else.cleanup74_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup74_crit_edge ], [ -22, %if.else.cleanup74_crit_edge ], [ -22, %if.end23.cleanup74_crit_edge ], [ %call63, %if.then72 ], [ %call63, %if.end69.cleanup74_crit_edge ], [ -12, %if.then40.cleanup74_crit_edge ], [ %call.i, %if.end.i.cleanup74_crit_edge ], [ -12, %if.then7.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x_start) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_map_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_io_rw(ptr noundef %vdev, i1 noundef zeroext %test_mem, ptr noundef %io, ptr noundef %buf, i64 noundef %off, i32 noundef %count, i32 noundef %x_start, i32 noundef %x_end, i1 noundef zeroext %iswrite) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %val47 = alloca i16, align 2
  %val80 = alloca i8, align 1
  %val123 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not420 = icmp eq i32 %count, 0
  br i1 %tobool.not420, label %entry.cleanup147_crit_edge, label %while.body.lr.ph

entry.cleanup147_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

while.body.lr.ph:                                 ; preds = %entry
  %conv = zext i32 %x_start to i64
  %conv7 = zext i32 %x_end to i64
  %memory_lock.i347 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 40
  br label %while.body

while.body:                                       ; preds = %cleanup143.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.0430 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr142, %cleanup143.while.body_crit_edge ]
  %done.0429 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup143.while.body_crit_edge ]
  %off.addr.0424 = phi i64 [ %off, %while.body.lr.ph ], [ %add141, %cleanup143.while.body_crit_edge ]
  %count.addr.0421 = phi i32 [ %count, %while.body.lr.ph ], [ %sub139, %cleanup143.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %off.addr.0424, i64 %conv)
  %cmp = icmp slt i64 %off.addr.0424, %conv
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %0 = trunc i64 %off.addr.0424 to i32
  %conv4 = sub i32 %x_start, %0
  %1 = call i32 @llvm.umin.i32(i32 %count.addr.0421, i32 %conv4)
  br label %if.end12

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %off.addr.0424, i64 %conv7)
  %cmp8.not = icmp slt i64 %off.addr.0424, %conv7
  %.count.addr.0 = select i1 %cmp8.not, i32 0, i32 %count.addr.0421
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then
  %fillable.0 = phi i32 [ %1, %if.then ], [ %.count.addr.0, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fillable.0)
  %cmp13 = icmp ugt i32 %fillable.0, 3
  %2 = and i64 %off.addr.0424, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool15.not = icmp eq i64 %2, 0
  %or.cond = select i1 %cmp13, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.then16, label %if.else40

if.then16:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !19
  br i1 %iswrite, label %if.end59.i.i, label %if.else27

if.end59.i.i:                                     ; preds = %if.then16
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #6
  %call.i.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 4, i32 -1226833920) #9, !srcloc !20
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !21

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #6
  %5 = call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #3, !srcloc !22
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf.addr.0430, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !21

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i356 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 4, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.0.i.i356
  %add.ptr.i.i = getelementptr i8, ptr %val, i32 %sub.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i356)
  br label %cleanup.thread

if.end21:                                         ; preds = %if.end.i.i
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %idx.ext = trunc i64 %off.addr.0424 to i32
  %add.ptr = getelementptr i8, ptr %io, i32 %idx.ext
  br i1 %test_mem, label %if.then.i, label %if.end7.critedge.i

if.then.i:                                        ; preds = %if.end21
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i, label %if.then5.critedge.i, label %vfio_pci_iowrite32.exit

if.then5.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !26
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup

if.end7.critedge.i:                               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #6, !srcloc !26
  br label %cleanup

vfio_pci_iowrite32.exit:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup.thread

if.else27:                                        ; preds = %if.then16
  %idx.ext29 = trunc i64 %off.addr.0424 to i32
  %add.ptr30 = getelementptr i8, ptr %io, i32 %idx.ext29
  br i1 %test_mem, label %if.then.i323, label %if.end8.critedge.i

if.then.i323:                                     ; preds = %if.else27
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i322 = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i322, label %if.then6.critedge.i, label %vfio_pci_ioread32.exit

if.then6.critedge.i:                              ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %val, align 4
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %if.end59.i.i229

if.end8.critedge.i:                               ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #8
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !27
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %val, align 4
  br label %if.end59.i.i229

vfio_pci_ioread32.exit:                           ; preds = %if.then.i323
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup.thread

if.end59.i.i229:                                  ; preds = %if.end8.critedge.i, %if.then6.critedge.i
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i230 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i230, label %if.end59.i.i229.cleanup.thread_crit_edge, label %if.end.i.i233

if.end59.i.i229.cleanup.thread_crit_edge:         ; preds = %if.end59.i.i229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end.i.i233:                                    ; preds = %if.end59.i.i229
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 4, i32 -1226833920) #9, !srcloc !29
  %asmresult.i.i231 = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i231)
  %cmp.i6.i232 = icmp eq i32 %asmresult.i.i231, 0
  br i1 %cmp.i6.i232, label %copy_to_user.exit, label %if.end.i.i233.cleanup.thread_crit_edge

if.end.i.i233.cleanup.thread_crit_edge:           ; preds = %if.end.i.i233
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

copy_to_user.exit:                                ; preds = %if.end.i.i233
  %call.i.i.i234 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0430, ptr noundef nonnull %val, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool36.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool36.not, label %copy_to_user.exit.cleanup_crit_edge, label %copy_to_user.exit.cleanup.thread_crit_edge

copy_to_user.exit.cleanup.thread_crit_edge:       ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.thread:                                   ; preds = %copy_to_user.exit.cleanup.thread_crit_edge, %if.end.i.i233.cleanup.thread_crit_edge, %if.end59.i.i229.cleanup.thread_crit_edge, %vfio_pci_ioread32.exit, %vfio_pci_iowrite32.exit, %if.then11.i.i
  %retval.1.ph = phi i32 [ -5, %vfio_pci_ioread32.exit ], [ -5, %vfio_pci_iowrite32.exit ], [ -14, %if.then11.i.i ], [ -14, %if.end.i.i233.cleanup.thread_crit_edge ], [ -14, %if.end59.i.i229.cleanup.thread_crit_edge ], [ -14, %copy_to_user.exit.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup147

cleanup:                                          ; preds = %copy_to_user.exit.cleanup_crit_edge, %if.end7.critedge.i, %if.then5.critedge.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup143

if.else40:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fillable.0)
  %cmp41 = icmp ugt i32 %fillable.0, 1
  %16 = and i64 %off.addr.0424, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool45.not = icmp eq i64 %16, 0
  %or.cond225 = select i1 %cmp41, i1 %tobool45.not, i1 false
  br i1 %or.cond225, label %if.then46, label %if.else77

if.then46:                                        ; preds = %if.else40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val47) #6
  %17 = ptrtoint ptr %val47 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 -1, ptr %val47, align 2, !annotation !19
  br i1 %iswrite, label %if.end59.i.i239, label %if.else61

if.end59.i.i239:                                  ; preds = %if.then46
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #6
  %call.i.i240 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i240, label %if.end59.i.i239.if.then11.i.i256_crit_edge, label %land.lhs.true.i.i243

if.end59.i.i239.if.then11.i.i256_crit_edge:       ; preds = %if.end59.i.i239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i256

land.lhs.true.i.i243:                             ; preds = %if.end59.i.i239
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 2, i32 -1226833920) #9, !srcloc !20
  %asmresult.i.i241 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i241)
  %cmp.i6.i242 = icmp eq i32 %asmresult.i.i241, 0
  br i1 %cmp.i6.i242, label %if.end.i.i253, label %land.lhs.true.i.i243.if.then11.i.i256_crit_edge, !prof !21

land.lhs.true.i.i243.if.then11.i.i256_crit_edge:  ; preds = %land.lhs.true.i.i243
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i256

if.end.i.i253:                                    ; preds = %land.lhs.true.i.i243
  %call.i.i.i244 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val47, i32 noundef 2) #6
  %19 = call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i.i.i.i.i.i245 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i245 to ptr
  %cpu_domain.i.i.i.i.i246 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i246) #3, !srcloc !22
  %and.i.i.i.i247 = and i32 %21, -13
  %or.i.i.i.i248 = or i32 %and.i.i.i.i247, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i248) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %call1.i.i.i249 = call i32 @arm_copy_from_user(ptr noundef nonnull %val47, ptr noundef %buf.addr.0430, i32 noundef 2) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i249)
  %tobool4.not.i.i252 = icmp eq i32 %call1.i.i.i249, 0
  br i1 %tobool4.not.i.i252, label %if.end53, label %if.end.i.i253.if.then11.i.i256_crit_edge, !prof !21

if.end.i.i253.if.then11.i.i256_crit_edge:         ; preds = %if.end.i.i253
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i256

if.then11.i.i256:                                 ; preds = %if.end.i.i253.if.then11.i.i256_crit_edge, %land.lhs.true.i.i243.if.then11.i.i256_crit_edge, %if.end59.i.i239.if.then11.i.i256_crit_edge
  %res.0.i.i251370 = phi i32 [ %call1.i.i.i249, %if.end.i.i253.if.then11.i.i256_crit_edge ], [ 2, %if.end59.i.i239.if.then11.i.i256_crit_edge ], [ 2, %land.lhs.true.i.i243.if.then11.i.i256_crit_edge ]
  %sub.i.i254 = sub i32 2, %res.0.i.i251370
  %add.ptr.i.i255 = getelementptr i8, ptr %val47, i32 %sub.i.i254
  %22 = call ptr @memset(ptr %add.ptr.i.i255, i32 0, i32 %res.0.i.i251370)
  br label %cleanup74.thread

if.end53:                                         ; preds = %if.end.i.i253
  %23 = ptrtoint ptr %val47 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %val47, align 2
  %idx.ext55 = trunc i64 %off.addr.0424 to i32
  %add.ptr56 = getelementptr i8, ptr %io, i32 %idx.ext55
  br i1 %test_mem, label %if.then.i328, label %if.end7.critedge.i331

if.then.i328:                                     ; preds = %if.end53
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i327 = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i327, label %if.then5.critedge.i330, label %vfio_pci_iowrite16.exit

if.then5.critedge.i330:                           ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 %24) #6, !srcloc !31
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup74

if.end7.critedge.i331:                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr56, i16 %24) #6, !srcloc !31
  br label %cleanup74

vfio_pci_iowrite16.exit:                          ; preds = %if.then.i328
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup74.thread

if.else61:                                        ; preds = %if.then46
  %idx.ext63 = trunc i64 %off.addr.0424 to i32
  %add.ptr64 = getelementptr i8, ptr %io, i32 %idx.ext63
  br i1 %test_mem, label %if.then.i335, label %if.end8.critedge.i338

if.then.i335:                                     ; preds = %if.else61
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i334 = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i334, label %if.then6.critedge.i337, label %vfio_pci_ioread16.exit

if.then6.critedge.i337:                           ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #8
  %25 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %26 = ptrtoint ptr %val47 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %val47, align 2
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %if.end59.i.i262

if.end8.critedge.i338:                            ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  %27 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr64) #6, !srcloc !32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !33
  %28 = ptrtoint ptr %val47 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %val47, align 2
  br label %if.end59.i.i262

vfio_pci_ioread16.exit:                           ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup74.thread

if.end59.i.i262:                                  ; preds = %if.end8.critedge.i338, %if.then6.critedge.i337
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i263 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i263, label %if.end59.i.i262.cleanup74.thread_crit_edge, label %if.end.i.i266

if.end59.i.i262.cleanup74.thread_crit_edge:       ; preds = %if.end59.i.i262
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74.thread

if.end.i.i266:                                    ; preds = %if.end59.i.i262
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 2, i32 -1226833920) #9, !srcloc !29
  %asmresult.i.i264 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i264)
  %cmp.i6.i265 = icmp eq i32 %asmresult.i.i264, 0
  br i1 %cmp.i6.i265, label %copy_to_user.exit271, label %if.end.i.i266.cleanup74.thread_crit_edge

if.end.i.i266.cleanup74.thread_crit_edge:         ; preds = %if.end.i.i266
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74.thread

copy_to_user.exit271:                             ; preds = %if.end.i.i266
  %call.i.i.i267 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val47, i32 noundef 2) #6
  %call.i12.i.i268 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0430, ptr noundef nonnull %val47, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i268)
  %tobool70.not = icmp eq i32 %call.i12.i.i268, 0
  br i1 %tobool70.not, label %copy_to_user.exit271.cleanup74_crit_edge, label %copy_to_user.exit271.cleanup74.thread_crit_edge

copy_to_user.exit271.cleanup74.thread_crit_edge:  ; preds = %copy_to_user.exit271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74.thread

copy_to_user.exit271.cleanup74_crit_edge:         ; preds = %copy_to_user.exit271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

cleanup74.thread:                                 ; preds = %copy_to_user.exit271.cleanup74.thread_crit_edge, %if.end.i.i266.cleanup74.thread_crit_edge, %if.end59.i.i262.cleanup74.thread_crit_edge, %vfio_pci_ioread16.exit, %vfio_pci_iowrite16.exit, %if.then11.i.i256
  %retval.2.ph = phi i32 [ -5, %vfio_pci_ioread16.exit ], [ -5, %vfio_pci_iowrite16.exit ], [ -14, %if.then11.i.i256 ], [ -14, %if.end.i.i266.cleanup74.thread_crit_edge ], [ -14, %if.end59.i.i262.cleanup74.thread_crit_edge ], [ -14, %copy_to_user.exit271.cleanup74.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val47) #6
  br label %cleanup147

cleanup74:                                        ; preds = %copy_to_user.exit271.cleanup74_crit_edge, %if.end7.critedge.i331, %if.then5.critedge.i330
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val47) #6
  br label %cleanup143

if.else77:                                        ; preds = %if.else40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fillable.0)
  %tobool78.not = icmp eq i32 %fillable.0, 0
  br i1 %tobool78.not, label %if.else110, label %if.then79

if.then79:                                        ; preds = %if.else77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val80) #6
  %30 = ptrtoint ptr %val80 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val80, align 1, !annotation !19
  br i1 %iswrite, label %if.end59.i.i275, label %if.else94

if.end59.i.i275:                                  ; preds = %if.then79
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #6
  %call.i.i276 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i276, label %if.end59.i.i275.if.then11.i.i292_crit_edge, label %land.lhs.true.i.i279

if.end59.i.i275.if.then11.i.i292_crit_edge:       ; preds = %if.end59.i.i275
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i292

land.lhs.true.i.i279:                             ; preds = %if.end59.i.i275
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 1, i32 -1226833920) #9, !srcloc !20
  %asmresult.i.i277 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i277)
  %cmp.i6.i278 = icmp eq i32 %asmresult.i.i277, 0
  br i1 %cmp.i6.i278, label %if.end.i.i289, label %land.lhs.true.i.i279.if.then11.i.i292_crit_edge, !prof !21

land.lhs.true.i.i279.if.then11.i.i292_crit_edge:  ; preds = %land.lhs.true.i.i279
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i292

if.end.i.i289:                                    ; preds = %land.lhs.true.i.i279
  %call.i.i.i280 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val80, i32 noundef 1) #6
  %32 = call i32 @llvm.read_register.i32(metadata !9) #6
  %and.i.i.i.i.i.i281 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i281 to ptr
  %cpu_domain.i.i.i.i.i282 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i282) #3, !srcloc !22
  %and.i.i.i.i283 = and i32 %34, -13
  %or.i.i.i.i284 = or i32 %and.i.i.i.i283, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i284) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  %call1.i.i.i285 = call i32 @arm_copy_from_user(ptr noundef nonnull %val80, ptr noundef %buf.addr.0430, i32 noundef 1) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #6, !srcloc !23
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i285)
  %tobool4.not.i.i288 = icmp eq i32 %call1.i.i.i285, 0
  br i1 %tobool4.not.i.i288, label %if.end86, label %if.end.i.i289.if.then11.i.i292_crit_edge, !prof !21

if.end.i.i289.if.then11.i.i292_crit_edge:         ; preds = %if.end.i.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i292

if.then11.i.i292:                                 ; preds = %if.end.i.i289.if.then11.i.i292_crit_edge, %land.lhs.true.i.i279.if.then11.i.i292_crit_edge, %if.end59.i.i275.if.then11.i.i292_crit_edge
  %res.0.i.i287384 = phi i32 [ %call1.i.i.i285, %if.end.i.i289.if.then11.i.i292_crit_edge ], [ 1, %if.end59.i.i275.if.then11.i.i292_crit_edge ], [ 1, %land.lhs.true.i.i279.if.then11.i.i292_crit_edge ]
  %sub.i.i290 = sub i32 1, %res.0.i.i287384
  %add.ptr.i.i291 = getelementptr i8, ptr %val80, i32 %sub.i.i290
  %35 = call ptr @memset(ptr %add.ptr.i.i291, i32 0, i32 %res.0.i.i287384)
  br label %cleanup107.thread

if.end86:                                         ; preds = %if.end.i.i289
  %36 = ptrtoint ptr %val80 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %val80, align 1
  %idx.ext88 = trunc i64 %off.addr.0424 to i32
  %add.ptr89 = getelementptr i8, ptr %io, i32 %idx.ext88
  br i1 %test_mem, label %if.then.i342, label %if.end7.critedge.i345

if.then.i342:                                     ; preds = %if.end86
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i341 = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i341, label %if.then5.critedge.i344, label %vfio_pci_iowrite8.exit

if.then5.critedge.i344:                           ; preds = %if.then.i342
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr89, i8 %37) #6, !srcloc !35
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup107

if.end7.critedge.i345:                            ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr89, i8 %37) #6, !srcloc !35
  br label %cleanup107

vfio_pci_iowrite8.exit:                           ; preds = %if.then.i342
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup107.thread

if.else94:                                        ; preds = %if.then79
  %idx.ext96 = trunc i64 %off.addr.0424 to i32
  %add.ptr97 = getelementptr i8, ptr %io, i32 %idx.ext96
  br i1 %test_mem, label %if.then.i349, label %if.end8.critedge.i352

if.then.i349:                                     ; preds = %if.else94
  call void @down_read(ptr noundef %memory_lock.i347) #6
  %call.i348 = call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %vdev) #6
  br i1 %call.i348, label %if.then6.critedge.i351, label %vfio_pci_ioread8.exit

if.then6.critedge.i351:                           ; preds = %if.then.i349
  call void @__sanitizer_cov_trace_pc() #8
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr97) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %39 = ptrtoint ptr %val80 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %val80, align 1
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %if.end59.i.i298

if.end8.critedge.i352:                            ; preds = %if.else94
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr97) #6, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  %41 = ptrtoint ptr %val80 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %val80, align 1
  br label %if.end59.i.i298

vfio_pci_ioread8.exit:                            ; preds = %if.then.i349
  call void @__sanitizer_cov_trace_pc() #8
  call void @up_read(ptr noundef %memory_lock.i347) #6
  br label %cleanup107.thread

if.end59.i.i298:                                  ; preds = %if.end8.critedge.i352, %if.then6.critedge.i351
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i299 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i299, label %if.end59.i.i298.cleanup107.thread_crit_edge, label %if.end.i.i302

if.end59.i.i298.cleanup107.thread_crit_edge:      ; preds = %if.end59.i.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.thread

if.end.i.i302:                                    ; preds = %if.end59.i.i298
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0430, i32 1, i32 -1226833920) #9, !srcloc !29
  %asmresult.i.i300 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i300)
  %cmp.i6.i301 = icmp eq i32 %asmresult.i.i300, 0
  br i1 %cmp.i6.i301, label %copy_to_user.exit307, label %if.end.i.i302.cleanup107.thread_crit_edge

if.end.i.i302.cleanup107.thread_crit_edge:        ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.thread

copy_to_user.exit307:                             ; preds = %if.end.i.i302
  %call.i.i.i303 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val80, i32 noundef 1) #6
  %call.i12.i.i304 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0430, ptr noundef nonnull %val80, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i304)
  %tobool103.not = icmp eq i32 %call.i12.i.i304, 0
  br i1 %tobool103.not, label %copy_to_user.exit307.cleanup107_crit_edge, label %copy_to_user.exit307.cleanup107.thread_crit_edge

copy_to_user.exit307.cleanup107.thread_crit_edge: ; preds = %copy_to_user.exit307
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107.thread

copy_to_user.exit307.cleanup107_crit_edge:        ; preds = %copy_to_user.exit307
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup107

cleanup107.thread:                                ; preds = %copy_to_user.exit307.cleanup107.thread_crit_edge, %if.end.i.i302.cleanup107.thread_crit_edge, %if.end59.i.i298.cleanup107.thread_crit_edge, %vfio_pci_ioread8.exit, %vfio_pci_iowrite8.exit, %if.then11.i.i292
  %retval.3.ph = phi i32 [ -5, %vfio_pci_ioread8.exit ], [ -5, %vfio_pci_iowrite8.exit ], [ -14, %if.then11.i.i292 ], [ -14, %if.end.i.i302.cleanup107.thread_crit_edge ], [ -14, %if.end59.i.i298.cleanup107.thread_crit_edge ], [ -14, %copy_to_user.exit307.cleanup107.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val80) #6
  br label %cleanup147

cleanup107:                                       ; preds = %copy_to_user.exit307.cleanup107_crit_edge, %if.end7.critedge.i345, %if.then5.critedge.i344
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val80) #6
  br label %cleanup143

if.else110:                                       ; preds = %if.else77
  %43 = trunc i64 %off.addr.0424 to i32
  %conv113 = sub i32 %x_end, %43
  %44 = call i32 @llvm.umin.i32(i32 %count.addr.0421, i32 %conv113)
  br i1 %iswrite, label %if.else110.cleanup143_crit_edge, label %if.then122

if.else110.cleanup143_crit_edge:                  ; preds = %if.else110
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup143

if.then122:                                       ; preds = %if.else110
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val123) #6
  %45 = ptrtoint ptr %val123 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %val123, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp124418.not = icmp eq i32 %44, 0
  br i1 %cmp124418.not, label %if.then122.cleanup131_crit_edge, label %if.then122.for.body_crit_edge

if.then122.for.body_crit_edge:                    ; preds = %if.then122
  br label %for.body

if.then122.cleanup131_crit_edge:                  ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

for.cond:                                         ; preds = %copy_to_user.exit320
  %inc = add nuw i32 %i.0419, 1
  %exitcond.not = icmp eq i32 %inc, %44
  br i1 %exitcond.not, label %for.cond.cleanup131_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup131_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then122.for.body_crit_edge
  %i.0419 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.then122.for.body_crit_edge ]
  %add.ptr126 = getelementptr i8, ptr %buf.addr.0430, i32 %i.0419
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #6
  %call.i.i312 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i312, label %for.body.cleanup131.thread_crit_edge, label %if.end.i.i315

for.body.cleanup131.thread_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131.thread

if.end.i.i315:                                    ; preds = %for.body
  %46 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr126, i32 1, i32 -1226833920) #9, !srcloc !29
  %asmresult.i.i313 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i313)
  %cmp.i6.i314 = icmp eq i32 %asmresult.i.i313, 0
  br i1 %cmp.i6.i314, label %copy_to_user.exit320, label %if.end.i.i315.cleanup131.thread_crit_edge

if.end.i.i315.cleanup131.thread_crit_edge:        ; preds = %if.end.i.i315
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131.thread

copy_to_user.exit320:                             ; preds = %if.end.i.i315
  %call.i.i.i316 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val123, i32 noundef 1) #6
  %call.i12.i.i317 = call i32 @arm_copy_to_user(ptr noundef %add.ptr126, ptr noundef nonnull %val123, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i317)
  %tobool128.not = icmp eq i32 %call.i12.i.i317, 0
  br i1 %tobool128.not, label %for.cond, label %copy_to_user.exit320.cleanup131.thread_crit_edge

copy_to_user.exit320.cleanup131.thread_crit_edge: ; preds = %copy_to_user.exit320
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup131.thread

cleanup131.thread:                                ; preds = %copy_to_user.exit320.cleanup131.thread_crit_edge, %if.end.i.i315.cleanup131.thread_crit_edge, %for.body.cleanup131.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val123) #6
  br label %cleanup147

cleanup131:                                       ; preds = %for.cond.cleanup131_crit_edge, %if.then122.cleanup131_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val123) #6
  br label %cleanup143

cleanup143:                                       ; preds = %cleanup131, %if.else110.cleanup143_crit_edge, %cleanup107, %cleanup74, %cleanup
  %filled.3 = phi i32 [ 1, %cleanup107 ], [ %44, %if.else110.cleanup143_crit_edge ], [ %44, %cleanup131 ], [ 2, %cleanup74 ], [ 4, %cleanup ]
  %sub139 = sub i32 %count.addr.0421, %filled.3
  %add = add i32 %filled.3, %done.0429
  %conv140 = zext i32 %filled.3 to i64
  %add141 = add i64 %off.addr.0424, %conv140
  %add.ptr142 = getelementptr i8, ptr %buf.addr.0430, i32 %filled.3
  %tobool.not = icmp eq i32 %sub139, 0
  br i1 %tobool.not, label %cleanup143.cleanup147_crit_edge, label %cleanup143.while.body_crit_edge

cleanup143.while.body_crit_edge:                  ; preds = %cleanup143
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup143.cleanup147_crit_edge:                  ; preds = %cleanup143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup147

cleanup147:                                       ; preds = %cleanup143.cleanup147_crit_edge, %cleanup131.thread, %cleanup107.thread, %cleanup74.thread, %cleanup.thread, %entry.cleanup147_crit_edge
  %retval.7 = phi i32 [ -14, %cleanup131.thread ], [ %retval.3.ph, %cleanup107.thread ], [ %retval.2.ph, %cleanup74.thread ], [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup147_crit_edge ], [ %add, %cleanup143.cleanup147_crit_edge ]
  ret i32 %retval.7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unmap_rom(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_vga_rw(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos, i1 noundef zeroext %iswrite) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %and = and i64 %1, 1099511627775
  %has_vga = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 24
  %2 = ptrtoint ptr %has_vga to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_vga, align 1, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 786431, i64 %and)
  %cmp = icmp ugt i64 %and, 786431
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %conv = trunc i64 %1 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %sw.caserange [
    i32 944, label %if.end2.sw.bb7_crit_edge
    i32 945, label %if.end2.sw.bb7_crit_edge93
    i32 946, label %if.end2.sw.bb7_crit_edge94
    i32 947, label %if.end2.sw.bb7_crit_edge95
    i32 948, label %if.end2.sw.bb7_crit_edge96
    i32 949, label %if.end2.sw.bb7_crit_edge97
    i32 950, label %if.end2.sw.bb7_crit_edge98
    i32 951, label %if.end2.sw.bb7_crit_edge99
    i32 952, label %if.end2.sw.bb7_crit_edge100
    i32 953, label %if.end2.sw.bb7_crit_edge101
    i32 954, label %if.end2.sw.bb7_crit_edge102
    i32 955, label %if.end2.sw.bb7_crit_edge103
    i32 960, label %if.end2.sw.bb19_crit_edge
    i32 961, label %if.end2.sw.bb19_crit_edge104
    i32 962, label %if.end2.sw.bb19_crit_edge105
    i32 963, label %if.end2.sw.bb19_crit_edge106
    i32 964, label %if.end2.sw.bb19_crit_edge107
    i32 965, label %if.end2.sw.bb19_crit_edge108
    i32 966, label %if.end2.sw.bb19_crit_edge109
    i32 967, label %if.end2.sw.bb19_crit_edge110
    i32 968, label %if.end2.sw.bb19_crit_edge111
    i32 969, label %if.end2.sw.bb19_crit_edge112
    i32 970, label %if.end2.sw.bb19_crit_edge113
    i32 971, label %if.end2.sw.bb19_crit_edge114
    i32 972, label %if.end2.sw.bb19_crit_edge115
    i32 973, label %if.end2.sw.bb19_crit_edge116
    i32 974, label %if.end2.sw.bb19_crit_edge117
    i32 975, label %if.end2.sw.bb19_crit_edge118
    i32 976, label %if.end2.sw.bb19_crit_edge119
    i32 977, label %if.end2.sw.bb19_crit_edge120
    i32 978, label %if.end2.sw.bb19_crit_edge121
    i32 979, label %if.end2.sw.bb19_crit_edge122
    i32 980, label %if.end2.sw.bb19_crit_edge123
    i32 981, label %if.end2.sw.bb19_crit_edge124
    i32 982, label %if.end2.sw.bb19_crit_edge125
    i32 983, label %if.end2.sw.bb19_crit_edge126
    i32 984, label %if.end2.sw.bb19_crit_edge127
    i32 985, label %if.end2.sw.bb19_crit_edge128
    i32 986, label %if.end2.sw.bb19_crit_edge129
    i32 987, label %if.end2.sw.bb19_crit_edge130
    i32 988, label %if.end2.sw.bb19_crit_edge131
    i32 989, label %if.end2.sw.bb19_crit_edge132
    i32 990, label %if.end2.sw.bb19_crit_edge133
    i32 991, label %if.end2.sw.bb19_crit_edge134
  ]

if.end2.sw.bb19_crit_edge134:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge133:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge132:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge131:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge130:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge129:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge128:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge127:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge126:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge125:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge124:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge123:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge122:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge121:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge120:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge119:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge118:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge117:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge116:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge115:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge114:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge113:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge112:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge111:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge110:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge109:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge108:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge107:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge106:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge105:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge104:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb19_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb19

if.end2.sw.bb7_crit_edge103:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge102:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge101:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge100:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge99:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge98:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge97:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge96:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge95:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge94:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge93:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

if.end2.sw.bb7_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7

sw.bb:                                            ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  %conv3 = sub nuw nsw i32 786432, %conv
  %5 = tail call i32 @llvm.umin.i32(i32 %conv3, i32 %count)
  %call = tail call ptr @ioremap(i32 noundef 655360, i32 noundef 131072) #6
  br label %sw.epilog

sw.caserange:                                     ; preds = %if.end2
  %6 = and i32 %conv, -131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 655360, i32 %6)
  %inbounds = icmp eq i32 %6, 655360
  br i1 %inbounds, label %sw.bb, label %sw.caserange.cleanup_crit_edge

sw.caserange.cleanup_crit_edge:                   ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb7:                                           ; preds = %if.end2.sw.bb7_crit_edge, %if.end2.sw.bb7_crit_edge93, %if.end2.sw.bb7_crit_edge94, %if.end2.sw.bb7_crit_edge95, %if.end2.sw.bb7_crit_edge96, %if.end2.sw.bb7_crit_edge97, %if.end2.sw.bb7_crit_edge98, %if.end2.sw.bb7_crit_edge99, %if.end2.sw.bb7_crit_edge100, %if.end2.sw.bb7_crit_edge101, %if.end2.sw.bb7_crit_edge102, %if.end2.sw.bb7_crit_edge103
  %conv9 = sub nuw nsw i32 956, %conv
  %7 = tail call i32 @llvm.umin.i32(i32 %conv9, i32 %count)
  %call17 = tail call ptr @ioport_map(i32 noundef 944, i32 noundef 12) #6
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end2.sw.bb19_crit_edge, %if.end2.sw.bb19_crit_edge104, %if.end2.sw.bb19_crit_edge105, %if.end2.sw.bb19_crit_edge106, %if.end2.sw.bb19_crit_edge107, %if.end2.sw.bb19_crit_edge108, %if.end2.sw.bb19_crit_edge109, %if.end2.sw.bb19_crit_edge110, %if.end2.sw.bb19_crit_edge111, %if.end2.sw.bb19_crit_edge112, %if.end2.sw.bb19_crit_edge113, %if.end2.sw.bb19_crit_edge114, %if.end2.sw.bb19_crit_edge115, %if.end2.sw.bb19_crit_edge116, %if.end2.sw.bb19_crit_edge117, %if.end2.sw.bb19_crit_edge118, %if.end2.sw.bb19_crit_edge119, %if.end2.sw.bb19_crit_edge120, %if.end2.sw.bb19_crit_edge121, %if.end2.sw.bb19_crit_edge122, %if.end2.sw.bb19_crit_edge123, %if.end2.sw.bb19_crit_edge124, %if.end2.sw.bb19_crit_edge125, %if.end2.sw.bb19_crit_edge126, %if.end2.sw.bb19_crit_edge127, %if.end2.sw.bb19_crit_edge128, %if.end2.sw.bb19_crit_edge129, %if.end2.sw.bb19_crit_edge130, %if.end2.sw.bb19_crit_edge131, %if.end2.sw.bb19_crit_edge132, %if.end2.sw.bb19_crit_edge133, %if.end2.sw.bb19_crit_edge134
  %conv21 = sub nuw nsw i32 992, %conv
  %8 = tail call i32 @llvm.umin.i32(i32 %conv21, i32 %count)
  %call29 = tail call ptr @ioport_map(i32 noundef 960, i32 noundef 32) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb7, %sw.bb
  %.sink = phi i64 [ -960, %sw.bb19 ], [ -944, %sw.bb7 ], [ -655360, %sw.bb ]
  %iomem.0 = phi ptr [ %call29, %sw.bb19 ], [ %call17, %sw.bb7 ], [ %call, %sw.bb ]
  %rsrc.0 = phi i32 [ 1, %sw.bb19 ], [ 1, %sw.bb7 ], [ 2, %sw.bb ]
  %is_ioport.0.off0 = phi i1 [ true, %sw.bb19 ], [ true, %sw.bb7 ], [ false, %sw.bb ]
  %count.addr.0 = phi i32 [ %8, %sw.bb19 ], [ %7, %sw.bb7 ], [ %5, %sw.bb ]
  %sub30 = add nsw i64 %and, %.sink
  %tobool31.not = icmp eq ptr %iomem.0, null
  br i1 %tobool31.not, label %sw.epilog.cleanup_crit_edge, label %if.end33

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %sw.epilog
  %pdev = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %call.i = tail call i32 @vga_get(ptr noundef %10, i32 noundef %rsrc.0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.end33
  br i1 %is_ioport.0.off0, label %cond.true39, label %cond.false40

cond.true39:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ioport_unmap(ptr noundef nonnull %iomem.0) #6
  br label %cleanup

cond.false40:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %iomem.0) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %call44 = tail call fastcc i32 @do_io_rw(ptr noundef %vdev, i1 noundef zeroext false, ptr noundef nonnull %iomem.0, ptr noundef %buf, i64 noundef %sub30, i32 noundef %count.addr.0, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %iswrite)
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  tail call void @vga_put(ptr noundef %12, i32 noundef %rsrc.0) #6
  br i1 %is_ioport.0.off0, label %cond.true48, label %cond.false49

cond.true48:                                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ioport_unmap(ptr noundef nonnull %iomem.0) #6
  br label %cond.end50

cond.false49:                                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %iomem.0) #6
  br label %cond.end50

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call44)
  %cmp51 = icmp sgt i32 %call44, -1
  br i1 %cmp51, label %if.then53, label %cond.end50.cleanup_crit_edge

cond.end50.cleanup_crit_edge:                     ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then53:                                        ; preds = %cond.end50
  call void @__sanitizer_cov_trace_pc() #8
  %conv5492 = zext i32 %call44 to i64
  %13 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ppos, align 8
  %add = add i64 %14, %conv5492
  store i64 %add, ptr %ppos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then53, %cond.end50.cleanup_crit_edge, %cond.false40, %cond.true39, %sw.epilog.cleanup_crit_edge, %sw.caserange.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.caserange.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call.i, %cond.false40 ], [ %call.i, %cond.true39 ], [ %call44, %if.then53 ], [ %call44, %cond.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioport_map(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ioport_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vga_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vfio_pci_ioeventfd(ptr noundef %vdev, i64 noundef %offset, i64 noundef %data, i32 noundef %count, i32 noundef %fd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 1
  %and = and i64 %offset, 1099511627775
  %shr = ashr i64 %offset, 40
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv)
  %cmp = icmp sgt i32 %conv, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %conv3 = sext i32 %count to i64
  %add = add nsw i64 %and, %conv3
  %end = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %3, 1
  %add11 = sub i32 %sub, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %add11, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %conv12 = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv12)
  %cmp13 = icmp sgt i64 %add, %conv12
  br i1 %cmp13, label %cond.end.cleanup_crit_edge, label %if.end16

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %cond.end
  %msix_bar = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 15
  %6 = ptrtoint ptr %msix_bar to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %msix_bar, align 1
  %conv17 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv17)
  %cmp18 = icmp eq i32 %conv, %conv17
  br i1 %cmp18, label %land.lhs.true, label %if.end16.if.end32_crit_edge

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end16
  %msix_offset = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 17
  %8 = ptrtoint ptr %msix_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msix_offset, align 4
  %conv22 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv22)
  %cmp23.not = icmp sgt i64 %add, %conv22
  br i1 %cmp23.not, label %lor.lhs.false, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

lor.lhs.false:                                    ; preds = %land.lhs.true
  %msix_size = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 16
  %10 = ptrtoint ptr %msix_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msix_size, align 2
  %conv26 = zext i16 %11 to i32
  %add27 = add i32 %9, %conv26
  %conv28 = zext i32 %add27 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %conv28)
  %cmp29.not = icmp ult i64 %and, %conv28
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp33 = icmp eq i32 %count, 8
  %or.cond = or i1 %cmp33, %cmp29.not
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %if.end16.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %count)
  %cmp33.old = icmp eq i32 %count, 8
  br i1 %cmp33.old, label %if.end32.cleanup_crit_edge, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end32.if.end36_crit_edge, %lor.lhs.false.if.end36_crit_edge
  %arrayidx.i = getelementptr %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 2, i32 %conv
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end36.if.end38_crit_edge

if.end36.if.end38_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end.i:                                         ; preds = %if.end36
  %shl.i = shl nuw nsw i32 1, %conv
  %call.i = tail call i32 @pci_request_selected_regions(ptr noundef %1, i32 noundef %shl.i, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call ptr @pci_iomap(ptr noundef %1, i32 noundef %conv, i32 noundef 0) #6
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end9.i

if.then7.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_release_selected_regions(ptr noundef %1, i32 noundef %shl.i) #6
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i, ptr %arrayidx.i, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end9.i, %if.end36.if.end38_crit_edge
  %ioeventfds_lock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ioeventfds_lock, i32 noundef 0) #6
  %ioeventfds_list = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 35
  %15 = ptrtoint ptr %ioeventfds_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %ioeventfd.0177 = load ptr, ptr %ioeventfds_list, align 4
  %cmp41.not178 = icmp eq ptr %ioeventfd.0177, %ioeventfds_list
  br i1 %cmp41.not178, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end38.for.body_crit_edge
  %ioeventfd.0179 = phi ptr [ %ioeventfd.0, %for.inc.for.body_crit_edge ], [ %ioeventfd.0177, %if.end38.for.body_crit_edge ]
  %pos43 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd.0179, i32 0, i32 5
  %16 = ptrtoint ptr %pos43 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %pos43, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %and)
  %cmp44 = icmp eq i64 %17, %and
  br i1 %cmp44, label %land.lhs.true46, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true46:                                  ; preds = %for.body
  %bar47 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd.0179, i32 0, i32 6
  %18 = ptrtoint ptr %bar47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bar47, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv)
  %cmp48 = icmp eq i32 %19, %conv
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true46.for.inc_crit_edge

land.lhs.true46.for.inc_crit_edge:                ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %data51 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd.0179, i32 0, i32 4
  %20 = ptrtoint ptr %data51 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %data51, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %data)
  %cmp52 = icmp eq i64 %21, %data
  br i1 %cmp52, label %land.lhs.true54, label %land.lhs.true50.for.inc_crit_edge

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true54:                                  ; preds = %land.lhs.true50
  %count55 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd.0179, i32 0, i32 7
  %22 = ptrtoint ptr %count55 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %count)
  %cmp56 = icmp eq i32 %23, %count
  br i1 %cmp56, label %if.then58, label %land.lhs.true54.for.inc_crit_edge

land.lhs.true54.for.inc_crit_edge:                ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then58:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %fd)
  %cmp59 = icmp eq i32 %fd, -1
  br i1 %cmp59, label %if.then61, label %if.then58.out_unlock_crit_edge

if.then58.out_unlock_crit_edge:                   ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.then61:                                        ; preds = %if.then58
  %virqfd = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd.0179, i32 0, i32 2
  tail call void @vfio_virqfd_disable(ptr noundef %virqfd) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ioeventfd.0179) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then61.list_del.exit_crit_edge

if.then61.list_del.exit_crit_edge:                ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ioeventfd.0179, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %ioeventfd.0179 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioeventfd.0179, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then61.list_del.exit_crit_edge
  %30 = ptrtoint ptr %ioeventfd.0179 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %ioeventfd.0179, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ioeventfd.0179, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ioeventfds_nr = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 30
  %32 = ptrtoint ptr %ioeventfds_nr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ioeventfds_nr, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %ioeventfds_nr, align 4
  tail call void @kfree(ptr noundef %ioeventfd.0179) #6
  br label %out_unlock

for.inc:                                          ; preds = %land.lhs.true54.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %land.lhs.true46.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %34 = ptrtoint ptr %ioeventfd.0179 to i32
  call void @__asan_load4_noabort(i32 %34)
  %ioeventfd.0 = load ptr, ptr %ioeventfd.0179, align 4
  %cmp41.not = icmp eq ptr %ioeventfd.0, %ioeventfds_list
  br i1 %cmp41.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end38.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fd)
  %cmp70 = icmp slt i32 %fd, 0
  br i1 %cmp70, label %for.end.out_unlock_crit_edge, label %if.end73

for.end.out_unlock_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end73:                                         ; preds = %for.end
  %ioeventfds_nr74 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %vdev, i32 0, i32 30
  %35 = ptrtoint ptr %ioeventfds_nr74 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ioeventfds_nr74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %36)
  %cmp75 = icmp sgt i32 %36, 999
  br i1 %cmp75, label %if.end73.out_unlock_crit_edge, label %if.end78

if.end73.out_unlock_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end78:                                         ; preds = %if.end73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 56) #10
  %tobool80.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool80.not, label %if.end78.out_unlock_crit_edge, label %if.end82

if.end78.out_unlock_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unlock

if.end82:                                         ; preds = %if.end78
  %vdev83 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %vdev83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %vdev, ptr %vdev83, align 8
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i, align 4
  %idx.ext = trunc i64 %offset to i32
  %add.ptr85 = getelementptr i8, ptr %40, i32 %idx.ext
  %addr = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr85, ptr %addr, align 8
  %data86 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 4
  %42 = ptrtoint ptr %data86 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %data, ptr %data86, align 8
  %pos87 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %pos87 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %and, ptr %pos87, align 8
  %bar88 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %bar88 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv, ptr %bar88, align 8
  %count89 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 7
  %45 = ptrtoint ptr %count89 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %count, ptr %count89, align 4
  %46 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev1, align 4
  %flags = getelementptr %struct.pci_dev, ptr %47, i32 0, i32 47, i32 %conv, i32 3
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %test_mem = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 8
  %and93 = lshr i32 %49, 9
  %50 = trunc i32 %and93 to i8
  %51 = and i8 %50, 1
  %52 = ptrtoint ptr %test_mem to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %test_mem, align 8
  %virqfd95 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %call7.i.i, i32 0, i32 2
  %call96 = tail call i32 @vfio_virqfd_enable(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @vfio_pci_ioeventfd_handler, ptr noundef nonnull @vfio_pci_ioeventfd_thread, ptr noundef null, ptr noundef %virqfd95, i32 noundef %fd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end99, label %if.then98

if.then98:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %out_unlock

if.end99:                                         ; preds = %if.end82
  %53 = ptrtoint ptr %ioeventfds_list to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioeventfds_list, align 4
  %call.i.i171 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %ioeventfds_list, ptr noundef %54) #6
  br i1 %call.i.i171, label %if.end.i.i172, label %if.end99.list_add.exit_crit_edge

if.end99.list_add.exit_crit_edge:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i172:                                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %54, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %ioeventfds_list, ptr %prev3.i.i, align 4
  %58 = ptrtoint ptr %ioeventfds_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i, ptr %ioeventfds_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i172, %if.end99.list_add.exit_crit_edge
  %59 = ptrtoint ptr %ioeventfds_nr74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ioeventfds_nr74, align 4
  %inc = add i32 %60, 1
  store i32 %inc, ptr %ioeventfds_nr74, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %list_add.exit, %if.then98, %if.end78.out_unlock_crit_edge, %if.end73.out_unlock_crit_edge, %for.end.out_unlock_crit_edge, %list_del.exit, %if.then58.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %list_del.exit ], [ %call96, %if.then98 ], [ 0, %list_add.exit ], [ -17, %if.then58.out_unlock_crit_edge ], [ -19, %for.end.out_unlock_crit_edge ], [ -28, %if.end73.out_unlock_crit_edge ], [ -12, %if.end78.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ioeventfds_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then7.i, %if.end.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -12, %if.then7.i ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_virqfd_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_virqfd_enable(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_pci_ioeventfd_handler(ptr nocapture noundef readonly %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev1 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 1
  %0 = ptrtoint ptr %vdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev1, align 8
  %test_mem = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 8
  %2 = ptrtoint ptr %test_mem to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %test_mem, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then:                                          ; preds = %entry
  %memory_lock = getelementptr inbounds %struct.vfio_pci_core_device, ptr %1, i32 0, i32 40
  %call = tail call i32 @down_read_trylock(ptr noundef %memory_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = tail call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %1) #6
  br i1 %call4, label %if.end.if.end8_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.end.if.end8_crit_edge, %entry.if.end8_crit_edge
  %count.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 7
  %4 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %5, label %if.end8.vfio_pci_ioeventfd_do_write.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 4, label %sw.bb8.i
  ]

if.end8.vfio_pci_ioeventfd_do_write.exit_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %vfio_pci_ioeventfd_do_write.exit

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 4
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data.i, align 8
  %conv.i = trunc i64 %8 to i8
  %addr.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 3
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %conv.i) #6, !srcloc !35
  br label %vfio_pci_ioeventfd_do_write.exit

sw.bb1.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %data4.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 4
  %11 = ptrtoint ptr %data4.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %data4.i, align 8
  %conv5.i = trunc i64 %12 to i16
  %addr6.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 3
  %13 = ptrtoint ptr %addr6.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr6.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %conv5.i) #6, !srcloc !31
  br label %vfio_pci_ioeventfd_do_write.exit

sw.bb8.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %data11.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 4
  %15 = ptrtoint ptr %data11.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data11.i, align 8
  %conv12.i = trunc i64 %16 to i32
  %addr13.i = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 3
  %17 = ptrtoint ptr %addr13.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr13.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %conv12.i) #6, !srcloc !26
  br label %vfio_pci_ioeventfd_do_write.exit

vfio_pci_ioeventfd_do_write.exit:                 ; preds = %sw.bb8.i, %sw.bb1.i, %sw.bb.i, %if.end8.vfio_pci_ioeventfd_do_write.exit_crit_edge
  %19 = ptrtoint ptr %test_mem to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %test_mem, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool10.not = icmp eq i8 %20, 0
  br i1 %tobool10.not, label %vfio_pci_ioeventfd_do_write.exit.cleanup_crit_edge, label %if.then11

vfio_pci_ioeventfd_do_write.exit.cleanup_crit_edge: ; preds = %vfio_pci_ioeventfd_do_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then11:                                        ; preds = %vfio_pci_ioeventfd_do_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %memory_lock12 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %1, i32 0, i32 40
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then11, %if.end.cleanup.sink.split_crit_edge
  %memory_lock12.sink = phi ptr [ %memory_lock12, %if.then11 ], [ %memory_lock, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @up_read(ptr noundef %memory_lock12.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %vfio_pci_ioeventfd_do_write.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 0, %vfio_pci_ioeventfd_do_write.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_pci_ioeventfd_thread(ptr nocapture noundef readonly %opaque, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %test_mem = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %opaque, i32 0, i32 8
  %0 = ptrtoint ptr %test_mem to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %test_mem, align 8, !range !38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  tail call fastcc void @vfio_pci_ioeventfd_do_write(ptr noundef %opaque, i1 noundef zeroext %tobool)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_selected_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_selected_regions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__vfio_pci_memory_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vfio_pci_ioeventfd_do_write(ptr nocapture noundef readonly %ioeventfd, i1 noundef zeroext %test_mem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 7
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 4
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %data, align 8
  %conv = trunc i64 %4 to i8
  %addr = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 3
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 8
  br i1 %test_mem, label %if.then.i, label %if.end7.critedge.i

if.then.i:                                        ; preds = %sw.bb
  %vdev = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 1
  %7 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev, align 8
  %memory_lock.i = getelementptr inbounds %struct.vfio_pci_core_device, ptr %8, i32 0, i32 40
  tail call void @down_read(ptr noundef %memory_lock.i) #6
  %call.i = tail call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %8) #6
  br i1 %call.i, label %if.then5.critedge.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up_read(ptr noundef %memory_lock.i) #6
  br label %sw.epilog

if.then5.critedge.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv) #6, !srcloc !35
  tail call void @up_read(ptr noundef %memory_lock.i) #6
  br label %sw.epilog

if.end7.critedge.i:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %conv) #6, !srcloc !35
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %data4 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 4
  %9 = ptrtoint ptr %data4 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %data4, align 8
  %conv5 = trunc i64 %10 to i16
  %addr6 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 3
  %11 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %addr6, align 8
  br i1 %test_mem, label %if.then.i28, label %if.end7.critedge.i31

if.then.i28:                                      ; preds = %sw.bb1
  %vdev2 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 1
  %13 = ptrtoint ptr %vdev2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdev2, align 8
  %memory_lock.i26 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %14, i32 0, i32 40
  tail call void @down_read(ptr noundef %memory_lock.i26) #6
  %call.i27 = tail call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %14) #6
  br i1 %call.i27, label %if.then5.critedge.i30, label %if.then1.i29

if.then1.i29:                                     ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up_read(ptr noundef %memory_lock.i26) #6
  br label %sw.epilog

if.then5.critedge.i30:                            ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %conv5) #6, !srcloc !31
  tail call void @up_read(ptr noundef %memory_lock.i26) #6
  br label %sw.epilog

if.end7.critedge.i31:                             ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 %conv5) #6, !srcloc !31
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %data11 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 4
  %15 = ptrtoint ptr %data11 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data11, align 8
  %conv12 = trunc i64 %16 to i32
  %addr13 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 3
  %17 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr13, align 8
  br i1 %test_mem, label %if.then.i35, label %if.end7.critedge.i38

if.then.i35:                                      ; preds = %sw.bb8
  %vdev9 = getelementptr inbounds %struct.vfio_pci_ioeventfd, ptr %ioeventfd, i32 0, i32 1
  %19 = ptrtoint ptr %vdev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdev9, align 8
  %memory_lock.i33 = getelementptr inbounds %struct.vfio_pci_core_device, ptr %20, i32 0, i32 40
  tail call void @down_read(ptr noundef %memory_lock.i33) #6
  %call.i34 = tail call zeroext i1 @__vfio_pci_memory_enabled(ptr noundef %20) #6
  br i1 %call.i34, label %if.then5.critedge.i37, label %if.then1.i36

if.then1.i36:                                     ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up_read(ptr noundef %memory_lock.i33) #6
  br label %sw.epilog

if.then5.critedge.i37:                            ; preds = %if.then.i35
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %conv12) #6, !srcloc !26
  tail call void @up_read(ptr noundef %memory_lock.i33) #6
  br label %sw.epilog

if.end7.critedge.i38:                             ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %conv12) #6, !srcloc !26
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end7.critedge.i38, %if.then5.critedge.i37, %if.then1.i36, %if.end7.critedge.i31, %if.then5.critedge.i30, %if.then1.i29, %if.end7.critedge.i, %if.then5.critedge.i, %if.then1.i, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7}
!llvm.named.register.sp = !{!9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/pci/vfio_pci_rdwr.c", i32 212, i32 53}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = distinct !{null, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!9 = !{!"sp"}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i64 2152173995, i64 2152174020}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 4669550}
!23 = !{i64 4669747}
!24 = !{i64 2152154980}
!25 = !{i64 2154675786}
!26 = !{i64 5718522}
!27 = !{i64 5718940}
!28 = !{i64 2154677993}
!29 = !{i64 2152174676, i64 2152174701}
!30 = !{i64 2154674962}
!31 = !{i64 5717902}
!32 = !{i64 5718102}
!33 = !{i64 2154677187}
!34 = !{i64 2153259670}
!35 = !{i64 5718325}
!36 = !{i64 5718720}
!37 = !{i64 2153258065}
!38 = !{i8 0, i8 2}
