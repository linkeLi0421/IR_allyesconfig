; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/lc.c_pt.bc'
source_filename = "../drivers/thunderbolt/lc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@tb_lc_dp_sink_alloc.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tb_lc_dp_sink_alloc\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/lc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx:%x: sink %d allocated\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_lc_dp_sink_dealloc.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_lc_dp_sink_dealloc\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%llx:%x: sink %d de-allocated\0A\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 475, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [28 x i8] c"../drivers/thunderbolt/lc.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 518, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_read_uuid(ptr nocapture noundef readonly %sw, ptr noundef %uuid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_lc = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %0 = ptrtoint ptr %cap_lc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap_lc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %2 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_unplugged.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %add = add i32 %1, 3
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %4 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %9 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %9, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %11 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = tail call i32 @tb_cfg_read(ptr noundef %7, ptr noundef %uuid, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 4) #3
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call1.i, %if.end.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_configure_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tb_lc_set_port_configured(ptr noundef %port, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_lc_set_port_configured(ptr noundef readonly %port, i1 noundef zeroext %configured) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw.i, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %3, i32 %bf.clear.i.i
  %cmp.i = icmp eq ptr %arrayidx.i.i, %port
  br i1 %cmp.i, label %entry.tb_is_upstream_port.exit_crit_edge, label %lor.rhs.i

entry.tb_is_upstream_port.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_is_upstream_port.exit

lor.rhs.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %dual_link_port.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 12
  %5 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %6, %arrayidx.i.i
  br label %tb_is_upstream_port.exit

tb_is_upstream_port.exit:                         ; preds = %lor.rhs.i, %entry.tb_is_upstream_port.exit_crit_edge
  %7 = phi i1 [ true, %entry.tb_is_upstream_port.exit_crit_edge ], [ %cmp1.i, %lor.rhs.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #3
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %ctrl, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp ult i32 %10, 2
  br i1 %cmp, label %tb_is_upstream_port.exit.cleanup_crit_edge, label %if.end

tb_is_upstream_port.exit.cleanup_crit_edge:       ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %tb_is_upstream_port.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #3
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %desc.i, align 4, !annotation !20
  %cap_lc.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cap_lc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %if.end.find_port_lc_cap.exit.thread_crit_edge, label %if.end.i.i

if.end.find_port_lc_cap.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i.i, label %read_lc_desc.exit.i, label %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge

if.end.i.i.find_port_lc_cap.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

read_lc_desc.exit.i:                              ; preds = %if.end.i.i
  %add.i.i = add i32 %13, 2
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %21 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %21, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %23 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %19, ptr noundef nonnull %desc.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge

read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge: ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit

if.end.i:                                         ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc.i, align 4
  %and.i = lshr i32 %25, 8
  %shr.i = and i32 %and.i, 255
  %and2.i = lshr i32 %25, 16
  %shr3.i = and i32 %and2.i, 4095
  %port4.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %26 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port4.i, align 4
  %conv.i = zext i8 %27 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %div1.i.i = lshr i32 %sub.i.i, 1
  %28 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cap_lc.i.i, align 8
  %add.i = add i32 %29, %shr.i
  %mul.i = mul i32 %div1.i.i, %shr3.i
  %add6.i = add i32 %add.i, %mul.i
  br label %find_port_lc_cap.exit

find_port_lc_cap.exit.thread:                     ; preds = %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge, %if.end.find_port_lc_cap.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.find_port_lc_cap.exit.thread_crit_edge ], [ -19, %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  br label %cleanup

find_port_lc_cap.exit:                            ; preds = %if.end.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %add6.i, %if.end.i ], [ %call1.i.i.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp4 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp4, label %find_port_lc_cap.exit.cleanup_crit_edge, label %if.end6

find_port_lc_cap.exit.cleanup_crit_edge:          ; preds = %find_port_lc_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end6:                                          ; preds = %find_port_lc_cap.exit
  %add = add nuw i32 %retval.0.i, 150
  %30 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i44 = icmp eq i8 %31, 0
  br i1 %tobool.not.i44, label %tb_sw_read.exit, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end6
  %32 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctl.i, align 8
  %36 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load.i.i45 = load i64, ptr %route_hi.i.i.i.i, align 4
  %37 = lshr i64 %bf.load.i.i45, 1
  %shl.i.i = and i64 %37, 9223372032559808512
  %38 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i = zext i32 %39 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %35, ptr noundef nonnull %ctrl, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end9, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %tb_sw_read.exit
  %port10 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %40 = ptrtoint ptr %port10 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %port10, align 4
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool11.not = icmp eq i8 %42, 0
  %. = select i1 %tobool11.not, i32 1048576, i32 65536
  br i1 %configured, label %if.then15, label %if.else20

if.then15:                                        ; preds = %if.end9
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl, align 4
  %or = or i32 %44, %.
  store i32 %or, ptr %ctrl, align 4
  br i1 %7, label %if.then17, label %if.then15.if.end25_crit_edge

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then17:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #5
  %or18 = or i32 %or, 1073741824
  %45 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or18, ptr %ctrl, align 4
  br label %if.end25

if.else20:                                        ; preds = %if.end9
  %neg = xor i32 %., -1
  %46 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctrl, align 4
  %and = and i32 %47, %neg
  store i32 %and, ptr %ctrl, align 4
  br i1 %7, label %if.then22, label %if.else20.if.end25_crit_edge

if.else20.if.end25_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end25

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #5
  %and23 = and i32 %and, -1073741825
  %48 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and23, ptr %ctrl, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.else20.if.end25_crit_edge, %if.then17, %if.then15.if.end25_crit_edge
  %49 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i49 = icmp eq i8 %50, 0
  br i1 %tobool.not.i49, label %if.end.i59, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i59:                                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #5
  %51 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i51 = getelementptr inbounds %struct.tb, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %ctl.i51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctl.i51, align 8
  %55 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load.i.i53 = load i64, ptr %route_hi.i.i.i.i, align 4
  %56 = lshr i64 %bf.load.i.i53, 1
  %shl.i.i54 = and i64 %56, 9223372032559808512
  %57 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i56 = zext i32 %58 to i64
  %or.i.i57 = or i64 %shl.i.i54, %conv2.i.i56
  %call1.i58 = call i32 @tb_cfg_write(ptr noundef %54, ptr noundef nonnull %ctrl, i64 noundef %or.i.i57, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i59, %if.end25.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %find_port_lc_cap.exit.cleanup_crit_edge, %find_port_lc_cap.exit.thread, %tb_is_upstream_port.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tb_is_upstream_port.exit.cleanup_crit_edge ], [ %retval.0.i, %find_port_lc_cap.exit.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %find_port_lc_cap.exit.thread ], [ %call1.i58, %if.end.i59 ], [ -19, %if.end25.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_lc_unconfigure_port(ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tb_lc_set_port_configured(ptr noundef %port, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_configure_xdomain(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tb_lc_set_xdomain_configured(ptr noundef %port, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_lc_set_xdomain_configured(ptr nocapture noundef readonly %port, i1 noundef zeroext %configure) unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp = icmp ult i32 %4, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #3
  %5 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %desc.i, align 4, !annotation !20
  %cap_lc.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_lc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.find_port_lc_cap.exit.thread_crit_edge, label %if.end.i.i

if.end.find_port_lc_cap.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i.i, label %read_lc_desc.exit.i, label %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge

if.end.i.i.find_port_lc_cap.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

read_lc_desc.exit.i:                              ; preds = %if.end.i.i
  %add.i.i = add i32 %7, 2
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %15 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %15, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %17 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %13, ptr noundef nonnull %desc.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge

read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge: ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit

if.end.i:                                         ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc.i, align 4
  %and.i = lshr i32 %19, 8
  %shr.i = and i32 %and.i, 255
  %and2.i = lshr i32 %19, 16
  %shr3.i = and i32 %and2.i, 4095
  %port4.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %20 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port4.i, align 4
  %conv.i = zext i8 %21 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %div1.i.i = lshr i32 %sub.i.i, 1
  %22 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cap_lc.i.i, align 8
  %add.i = add i32 %23, %shr.i
  %mul.i = mul i32 %div1.i.i, %shr3.i
  %add6.i = add i32 %add.i, %mul.i
  br label %find_port_lc_cap.exit

find_port_lc_cap.exit.thread:                     ; preds = %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge, %if.end.find_port_lc_cap.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.find_port_lc_cap.exit.thread_crit_edge ], [ -19, %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  br label %cleanup

find_port_lc_cap.exit:                            ; preds = %if.end.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %add6.i, %if.end.i ], [ %call1.i.i.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %find_port_lc_cap.exit.cleanup_crit_edge, label %if.end4

find_port_lc_cap.exit.cleanup_crit_edge:          ; preds = %find_port_lc_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %find_port_lc_cap.exit
  %add = add nuw i32 %retval.0.i, 150
  %24 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i31 = icmp eq i8 %25, 0
  br i1 %tobool.not.i31, label %tb_sw_read.exit, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end4
  %26 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctl.i, align 8
  %30 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %31 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %31, 9223372032559808512
  %32 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i = zext i32 %33 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %29, ptr noundef nonnull %ctrl, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end7, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %tb_sw_read.exit
  %port8 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %34 = ptrtoint ptr %port8 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %port8, align 4
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool9.not = icmp eq i8 %36, 0
  %. = select i1 %tobool9.not, i32 2097152, i32 131072
  br i1 %configure, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctrl, align 4
  %or = or i32 %38, %.
  br label %if.end15

if.else14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i32 %., -1
  %39 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ctrl, align 4
  %and = and i32 %40, %neg
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %storemerge = phi i32 [ %and, %if.else14 ], [ %or, %if.then13 ]
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %storemerge, ptr %ctrl, align 4
  %42 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i35 = icmp eq i8 %43, 0
  br i1 %tobool.not.i35, label %if.end.i45, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i45:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i37 = getelementptr inbounds %struct.tb, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ctl.i37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctl.i37, align 8
  %48 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %bf.load.i.i39 = load i64, ptr %route_hi.i.i.i.i, align 4
  %49 = lshr i64 %bf.load.i.i39, 1
  %shl.i.i40 = and i64 %49, 9223372032559808512
  %50 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i42 = zext i32 %51 to i64
  %or.i.i43 = or i64 %shl.i.i40, %conv2.i.i42
  %call1.i44 = call i32 @tb_cfg_write(ptr noundef %47, ptr noundef nonnull %ctrl, i64 noundef %or.i.i43, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i45, %if.end15.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %find_port_lc_cap.exit.cleanup_crit_edge, %find_port_lc_cap.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %find_port_lc_cap.exit.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %find_port_lc_cap.exit.thread ], [ %call1.i44, %if.end.i45 ], [ -19, %if.end15.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_lc_unconfigure_xdomain(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tb_lc_set_xdomain_configured(ptr noundef %port, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_start_lane_initialization(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #3
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl, align 4, !annotation !20
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %4 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %4, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %6 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %generation = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp ult i32 %8, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #3
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %desc.i, align 4, !annotation !20
  %cap_lc.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 18
  %10 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_lc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end3.find_port_lc_cap.exit.thread_crit_edge, label %if.end.i.i

if.end3.find_port_lc_cap.exit.thread_crit_edge:   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

if.end.i.i:                                       ; preds = %if.end3
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %12 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i.i, label %read_lc_desc.exit.i, label %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge

if.end.i.i.find_port_lc_cap.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

read_lc_desc.exit.i:                              ; preds = %if.end.i.i
  %add.i.i = add i32 %11, 2
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctl.i.i.i, align 8
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %17, ptr noundef nonnull %desc.i, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge

read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge: ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit

if.end.i:                                         ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %desc.i, align 4
  %and.i = lshr i32 %19, 8
  %shr.i = and i32 %and.i, 255
  %and2.i = lshr i32 %19, 16
  %shr3.i = and i32 %and2.i, 4095
  %port4.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %20 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port4.i, align 4
  %conv.i = zext i8 %21 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %div1.i.i = lshr i32 %sub.i.i, 1
  %22 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cap_lc.i.i, align 8
  %add.i = add i32 %23, %shr.i
  %mul.i = mul i32 %div1.i.i, %shr3.i
  %add6.i = add i32 %add.i, %mul.i
  br label %find_port_lc_cap.exit

find_port_lc_cap.exit.thread:                     ; preds = %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge, %if.end3.find_port_lc_cap.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end3.find_port_lc_cap.exit.thread_crit_edge ], [ -19, %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  br label %cleanup

find_port_lc_cap.exit:                            ; preds = %if.end.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %add6.i, %if.end.i ], [ %call1.i.i.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp5 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp5, label %find_port_lc_cap.exit.cleanup_crit_edge, label %if.end7

find_port_lc_cap.exit.cleanup_crit_edge:          ; preds = %find_port_lc_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %find_port_lc_cap.exit
  %add = add nuw i32 %retval.0.i, 150
  %24 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i25 = icmp eq i8 %25, 0
  br i1 %tobool.not.i25, label %tb_sw_read.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end7
  %26 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctl.i, align 8
  %30 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i, align 4
  %31 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %31, 9223372032559808512
  %32 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i = zext i32 %33 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %29, ptr noundef nonnull %ctrl, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %if.end11, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %tb_sw_read.exit
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctrl, align 4
  %or = or i32 %35, 536870912
  store i32 %or, ptr %ctrl, align 4
  %36 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i29 = icmp eq i8 %37, 0
  br i1 %tobool.not.i29, label %if.end.i39, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i39:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i31 = getelementptr inbounds %struct.tb, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %ctl.i31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctl.i31, align 8
  %42 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %bf.load.i.i33 = load i64, ptr %route_hi.i, align 4
  %43 = lshr i64 %bf.load.i.i33, 1
  %shl.i.i34 = and i64 %43, 9223372032559808512
  %44 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i36 = zext i32 %45 to i64
  %or.i.i37 = or i64 %shl.i.i34, %conv2.i.i36
  %call1.i38 = call i32 @tb_cfg_write(ptr noundef %41, ptr noundef nonnull %ctrl, i64 noundef %or.i.i37, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i39, %if.end11.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %find_port_lc_cap.exit.cleanup_crit_edge, %find_port_lc_cap.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.i, %find_port_lc_cap.exit.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %find_port_lc_cap.exit.thread ], [ %call1.i38, %if.end.i39 ], [ -19, %if.end11.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_lc_is_clx_supported(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #3
  %3 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc.i, align 4, !annotation !20
  %cap_lc.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap_lc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %entry.find_port_lc_cap.exit.thread_crit_edge, label %if.end.i.i

entry.find_port_lc_cap.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

if.end.i.i:                                       ; preds = %entry
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %read_lc_desc.exit.i, label %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge

if.end.i.i.find_port_lc_cap.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

read_lc_desc.exit.i:                              ; preds = %if.end.i.i
  %add.i.i = add i32 %5, 2
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %13 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %15 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %desc.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge

read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge: ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit

if.end.i:                                         ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %desc.i, align 4
  %and.i = lshr i32 %17, 8
  %shr.i = and i32 %and.i, 255
  %and2.i = lshr i32 %17, 16
  %shr3.i = and i32 %and2.i, 4095
  %port4.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %18 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port4.i, align 4
  %conv.i = zext i8 %19 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %div1.i.i = lshr i32 %sub.i.i, 1
  %20 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cap_lc.i.i, align 8
  %add.i = add i32 %21, %shr.i
  %mul.i = mul i32 %div1.i.i, %shr3.i
  %add6.i = add i32 %add.i, %mul.i
  br label %find_port_lc_cap.exit

find_port_lc_cap.exit.thread:                     ; preds = %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge, %entry.find_port_lc_cap.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  br label %cleanup

find_port_lc_cap.exit:                            ; preds = %if.end.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %add6.i, %if.end.i ], [ %call1.i.i.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %find_port_lc_cap.exit.cleanup_crit_edge, label %if.end

find_port_lc_cap.exit.cleanup_crit_edge:          ; preds = %find_port_lc_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %find_port_lc_cap.exit
  %22 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i12 = icmp eq i8 %23, 0
  br i1 %tobool.not.i12, label %tb_sw_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end
  %add = add nuw i32 %retval.0.i, 151
  %24 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl.i, align 8
  %28 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %29 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %29, 9223372032559808512
  %30 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i = zext i32 %31 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %27, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end4, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and = and i32 %33, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %tb_sw_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %find_port_lc_cap.exit.cleanup_crit_edge, %find_port_lc_cap.exit.thread
  %retval.0 = phi i1 [ %tobool5, %if.end4 ], [ false, %find_port_lc_cap.exit.cleanup_crit_edge ], [ false, %tb_sw_read.exit.cleanup_crit_edge ], [ false, %find_port_lc_cap.exit.thread ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_set_wake(ptr nocapture noundef readonly %sw, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %ctrl.i = alloca i32, align 4
  %desc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end:                                           ; preds = %entry
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %4 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %4, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %6 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %if.end.cleanup16_crit_edge, label %if.end2

if.end.cleanup16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end2:                                          ; preds = %if.end
  %cap_lc.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %7 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cap_lc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end2.cleanup16_crit_edge, label %if.end.i

if.end2.cleanup16_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end.i:                                         ; preds = %if.end2
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %read_lc_desc.exit, label %if.end.i.cleanup16_crit_edge

if.end.i.cleanup16_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

read_lc_desc.exit:                                ; preds = %if.end.i
  %add.i = add i32 %8, 2
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %11 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl.i.i, align 8
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %14, ptr noundef nonnull %desc, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool4.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %read_lc_desc.exit.cleanup16_crit_edge

read_lc_desc.exit.cleanup16_crit_edge:            ; preds = %read_lc_desc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

if.end6:                                          ; preds = %read_lc_desc.exit
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc, align 4
  %and = and i32 %16, 15
  %and8 = lshr i32 %16, 16
  %shr9 = and i32 %and8, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp1052.not = icmp eq i32 %and, 0
  br i1 %cmp1052.not, label %if.end6.cleanup16_crit_edge, label %for.body.lr.ph

if.end6.cleanup16_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %if.end6
  %and7 = lshr i32 %16, 8
  %shr = and i32 %and7, 255
  %add = add nuw nsw i32 %shr, 150
  %and1.i = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %and5.i = shl i32 %flags, 3
  %17 = and i32 %and5.i, 32
  %and15.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %and10.i = shl i32 %flags, 2
  %18 = and i32 %and10.i, 64
  br label %for.body

for.cond:                                         ; preds = %tb_lc_set_wake_one.exit
  %inc = add nuw nsw i32 %i.053, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.cond.cleanup16_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.cleanup16_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %19 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap_lc.i, align 8
  %mul = mul nuw nsw i32 %i.053, %shr9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl.i) #3
  %21 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %ctrl.i, align 4, !annotation !20
  %add11 = add nuw nsw i32 %add, %mul
  %add.i31 = add i32 %add11, %20
  %22 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i33 = icmp eq i8 %23, 0
  br i1 %tobool.not.i.i33, label %tb_sw_read.exit.i, label %for.body._crit_edge

for.body._crit_edge:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %40

tb_sw_read.exit.i:                                ; preds = %for.body
  %24 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i35 = getelementptr inbounds %struct.tb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctl.i.i35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl.i.i35, align 8
  %28 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i.i37 = load i64, ptr %route_hi.i, align 4
  %29 = lshr i64 %bf.load.i.i.i37, 1
  %shl.i.i.i38 = and i64 %29, 9223372032559808512
  %30 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i.i40 = zext i32 %31 to i64
  %or.i.i.i41 = or i64 %shl.i.i.i38, %conv2.i.i.i40
  %call1.i.i42 = call i32 @tb_cfg_read(ptr noundef %27, ptr noundef nonnull %ctrl.i, i64 noundef %or.i.i.i41, i32 noundef 0, i32 noundef 2, i32 noundef %add.i31, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i.i42, 0
  br i1 %tobool.not.i43, label %if.end.i45, label %tb_sw_read.exit.i._crit_edge

tb_sw_read.exit.i._crit_edge:                     ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %40

if.end.i45:                                       ; preds = %tb_sw_read.exit.i
  %32 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctrl.i, align 4
  %and.i = and i32 %33, -127
  %or.i44 = or i32 %and.i, 6
  %spec.select.i = select i1 %tobool2.not.i, i32 %and.i, i32 %or.i44
  %34 = or i32 %spec.select.i, %17
  %35 = or i32 %18, %34
  store i32 %35, ptr %ctrl.i, align 4
  br i1 %tobool16.not.i, label %if.end.i45.if.end19.i_crit_edge, label %if.then17.i

if.end.i45.if.end19.i_crit_edge:                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #5
  %36 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctrl.i, align 4
  %or18.i = or i32 %37, 24
  store i32 %or18.i, ptr %ctrl.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end.i45.if.end19.i_crit_edge
  %38 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i30.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i30.i, label %tb_lc_set_wake_one.exit, label %if.end19.i._crit_edge

if.end19.i._crit_edge:                            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %40

40:                                               ; preds = %if.end19.i._crit_edge, %tb_sw_read.exit.i._crit_edge, %for.body._crit_edge
  %retval.0.i46.ph = phi i32 [ -19, %for.body._crit_edge ], [ -19, %if.end19.i._crit_edge ], [ %call1.i.i42, %tb_sw_read.exit.i._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #3
  br label %cleanup16

tb_lc_set_wake_one.exit:                          ; preds = %if.end19.i
  %41 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tb.i.i, align 8
  %ctl.i32.i = getelementptr inbounds %struct.tb, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ctl.i32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctl.i32.i, align 8
  %45 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %bf.load.i.i34.i = load i64, ptr %route_hi.i, align 4
  %46 = lshr i64 %bf.load.i.i34.i, 1
  %shl.i.i35.i = and i64 %46, 9223372032559808512
  %47 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i37.i = zext i32 %48 to i64
  %or.i.i38.i = or i64 %shl.i.i35.i, %conv2.i.i37.i
  %call1.i39.i = call i32 @tb_cfg_write(ptr noundef %44, ptr noundef nonnull %ctrl.i, i64 noundef %or.i.i38.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i31, i32 noundef 1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i)
  %tobool13.not = icmp eq i32 %call1.i39.i, 0
  br i1 %tobool13.not, label %for.cond, label %tb_lc_set_wake_one.exit.cleanup16_crit_edge

tb_lc_set_wake_one.exit.cleanup16_crit_edge:      ; preds = %tb_lc_set_wake_one.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup16

cleanup16:                                        ; preds = %tb_lc_set_wake_one.exit.cleanup16_crit_edge, %40, %for.cond.cleanup16_crit_edge, %if.end6.cleanup16_crit_edge, %read_lc_desc.exit.cleanup16_crit_edge, %if.end.i.cleanup16_crit_edge, %if.end2.cleanup16_crit_edge, %if.end.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ 0, %if.end.cleanup16_crit_edge ], [ %call1.i.i, %read_lc_desc.exit.cleanup16_crit_edge ], [ %retval.0.i46.ph, %40 ], [ -19, %if.end.i.cleanup16_crit_edge ], [ -22, %if.end2.cleanup16_crit_edge ], [ 0, %if.end6.cleanup16_crit_edge ], [ %call1.i39.i, %tb_lc_set_wake_one.exit.cleanup16_crit_edge ], [ 0, %for.cond.cleanup16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #3
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_set_sleep(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %desc = alloca i32, align 4
  %ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc) #3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup19_crit_edge, label %if.end

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

if.end:                                           ; preds = %entry
  %cap_lc.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %3 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cap_lc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end.cleanup19_crit_edge, label %if.end.i

if.end.cleanup19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

if.end.i:                                         ; preds = %if.end
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %read_lc_desc.exit, label %if.end.i.cleanup19_crit_edge

if.end.i.cleanup19_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

read_lc_desc.exit:                                ; preds = %if.end.i
  %add.i = add i32 %4, 2
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %12 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %14 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %desc, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not, label %if.end2, label %read_lc_desc.exit.cleanup19_crit_edge

read_lc_desc.exit.cleanup19_crit_edge:            ; preds = %read_lc_desc.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

if.end2:                                          ; preds = %read_lc_desc.exit
  %15 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc, align 4
  %and = and i32 %16, 15
  %and4 = lshr i32 %16, 16
  %shr5 = and i32 %and4, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp663.not = icmp eq i32 %and, 0
  br i1 %cmp663.not, label %if.end2.cleanup19_crit_edge, label %for.body.lr.ph

if.end2.cleanup19_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

for.body.lr.ph:                                   ; preds = %if.end2
  %and3 = lshr i32 %16, 8
  %shr = and i32 %and3, 255
  %add = add nuw nsw i32 %shr, 150
  br label %for.body

for.cond:                                         ; preds = %cleanup
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %for.cond.cleanup19_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.cond.cleanup19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %17 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_lc.i, align 8
  %mul = mul nuw nsw i32 %i.064, %shr5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #3
  %19 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ctrl, align 4, !annotation !20
  %add7 = add nuw nsw i32 %add, %mul
  %add8 = add i32 %add7, %18
  %20 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i37 = icmp eq i8 %21, 0
  br i1 %tobool.not.i37, label %tb_sw_read.exit, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

tb_sw_read.exit:                                  ; preds = %for.body
  %22 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl.i, align 8
  %26 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %27 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %27, 9223372032559808512
  %28 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i = zext i32 %29 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %25, ptr noundef nonnull %ctrl, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add8, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool10.not = icmp eq i32 %call1.i, 0
  br i1 %tobool10.not, label %if.end12, label %tb_sw_read.exit.cleanup.thread_crit_edge

tb_sw_read.exit.cleanup.thread_crit_edge:         ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

if.end12:                                         ; preds = %tb_sw_read.exit
  %30 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctrl, align 4
  %or = or i32 %31, -2147483648
  store i32 %or, ptr %ctrl, align 4
  %32 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i41 = icmp eq i8 %33, 0
  br i1 %tobool.not.i41, label %cleanup, label %cleanup.thread59

cleanup.thread59:                                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  br label %cleanup19

cleanup.thread:                                   ; preds = %tb_sw_read.exit.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call1.i, %tb_sw_read.exit.cleanup.thread_crit_edge ], [ -19, %for.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  br label %cleanup19

cleanup:                                          ; preds = %if.end12
  %34 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tb.i.i, align 8
  %ctl.i43 = getelementptr inbounds %struct.tb, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %ctl.i43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctl.i43, align 8
  %38 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %bf.load.i.i45 = load i64, ptr %route_hi.i.i.i, align 4
  %39 = lshr i64 %bf.load.i.i45, 1
  %shl.i.i46 = and i64 %39, 9223372032559808512
  %40 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i48 = zext i32 %41 to i64
  %or.i.i49 = or i64 %shl.i.i46, %conv2.i.i48
  %call1.i50 = call i32 @tb_cfg_write(ptr noundef %37, ptr noundef nonnull %ctrl, i64 noundef %or.i.i49, i32 noundef 0, i32 noundef 2, i32 noundef %add8, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool15.not = icmp eq i32 %call1.i50, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #3
  br i1 %tobool15.not, label %for.cond, label %cleanup.cleanup19_crit_edge

cleanup.cleanup19_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup19

cleanup19:                                        ; preds = %cleanup.cleanup19_crit_edge, %cleanup.thread, %cleanup.thread59, %for.cond.cleanup19_crit_edge, %if.end2.cleanup19_crit_edge, %read_lc_desc.exit.cleanup19_crit_edge, %if.end.i.cleanup19_crit_edge, %if.end.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup19_crit_edge ], [ %call1.i.i, %read_lc_desc.exit.cleanup19_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ -19, %cleanup.thread59 ], [ -19, %if.end.i.cleanup19_crit_edge ], [ -22, %if.end.cleanup19_crit_edge ], [ 0, %if.end2.cleanup19_crit_edge ], [ %call1.i50, %cleanup.cleanup19_crit_edge ], [ 0, %for.cond.cleanup19_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc) #3
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_lc_lane_bonding_possible(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ult i32 %2, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %sw1.i = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear.i, i32 1
  %6 = ptrtoint ptr %sw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %desc.i, align 4, !annotation !20
  %cap_lc.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 18
  %9 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cap_lc.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end.find_port_lc_cap.exit.thread_crit_edge, label %if.end.i.i

if.end.find_port_lc_cap.exit.thread_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 20
  %11 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i.i, label %read_lc_desc.exit.i, label %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge

if.end.i.i.find_port_lc_cap.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit.thread

read_lc_desc.exit.i:                              ; preds = %if.end.i.i
  %add.i.i = add i32 %10, 2
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 5
  %13 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %18 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %18, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %20 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %call1.i.i.i = call i32 @tb_cfg_read(ptr noundef %16, ptr noundef nonnull %desc.i, i64 noundef %or.i.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge

read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge: ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %find_port_lc_cap.exit

if.end.i:                                         ; preds = %read_lc_desc.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc.i, align 4
  %and.i = lshr i32 %22, 8
  %shr.i = and i32 %and.i, 255
  %and2.i = lshr i32 %22, 16
  %shr3.i = and i32 %and2.i, 4095
  %port4.i = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear.i, i32 9
  %23 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port4.i, align 4
  %conv.i = zext i8 %24 to i32
  %sub.i.i = add nsw i32 %conv.i, -1
  %div1.i.i = lshr i32 %sub.i.i, 1
  %25 = ptrtoint ptr %cap_lc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap_lc.i.i, align 8
  %add.i = add i32 %26, %shr.i
  %mul.i = mul i32 %div1.i.i, %shr3.i
  %add6.i = add i32 %add.i, %mul.i
  br label %find_port_lc_cap.exit

find_port_lc_cap.exit.thread:                     ; preds = %if.end.i.i.find_port_lc_cap.exit.thread_crit_edge, %if.end.find_port_lc_cap.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  br label %cleanup

find_port_lc_cap.exit:                            ; preds = %if.end.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %add6.i, %if.end.i ], [ %call1.i.i.i, %read_lc_desc.exit.i.find_port_lc_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %find_port_lc_cap.exit.cleanup_crit_edge, label %if.end4

find_port_lc_cap.exit.cleanup_crit_edge:          ; preds = %find_port_lc_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end4:                                          ; preds = %find_port_lc_cap.exit
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %27 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_unplugged.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i16 = icmp eq i8 %28, 0
  br i1 %tobool.not.i16, label %tb_sw_read.exit, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end4
  %add = add nuw i32 %retval.0.i, 141
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %29 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %34 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %34, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %36 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %32, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end7, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and = and i32 %38, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %tb_sw_read.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %find_port_lc_cap.exit.cleanup_crit_edge, %find_port_lc_cap.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool8, %if.end7 ], [ false, %entry.cleanup_crit_edge ], [ false, %find_port_lc_cap.exit.cleanup_crit_edge ], [ false, %tb_sw_read.exit.cleanup_crit_edge ], [ false, %find_port_lc_cap.exit.thread ], [ false, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_lc_dp_sink_query(ptr nocapture noundef readonly %sw, ptr noundef readnone %in) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %0 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ult i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %2 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %3, i32 %bf.clear.i
  %port.010.i = getelementptr %struct.tb_port, ptr %3, i32 1
  %cmp.not11.i = icmp ugt ptr %port.010.i, %arrayidx2.i
  br i1 %cmp.not11.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %port.013.i = phi ptr [ %port.0.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %port.010.i, %if.end.for.body.i_crit_edge ]
  %.pn12.i = phi ptr [ %port.013.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %3, %if.end.for.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %port.013.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %land.rhs.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %type.i.i = getelementptr %struct.tb_port, ptr %.pn12.i, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %6 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %6, 1009088891019329536
  br i1 %cmp.i.i, label %tb_lc_dp_sink_from_port.exit, label %land.rhs.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.for.cond.backedge.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %land.rhs.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %port.0.i = getelementptr %struct.tb_port, ptr %port.013.i, i32 1
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.cleanup_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.backedge.i.cleanup_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_lc_dp_sink_from_port.exit:                     ; preds = %land.rhs.i.i
  %cmp3.i.not = icmp eq ptr %port.013.i, %in
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i, align 4, !annotation !20
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %8 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i8 = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i8, label %tb_sw_read.exit.i, label %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit_crit_edge

tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit_crit_edge: ; preds = %tb_lc_dp_sink_from_port.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit

tb_sw_read.exit.i:                                ; preds = %tb_lc_dp_sink_from_port.exit
  %cap_lc.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %10 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_lc.i, align 8
  %add.i = add i32 %11, 16
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %12 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %17 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %17, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %19 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %15, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit_crit_edge

tb_sw_read.exit.i.tb_lc_dp_sink_available.exit_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit

if.end.i:                                         ; preds = %tb_sw_read.exit.i
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  br i1 %cmp3.i.not, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i = and i32 %21, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.i = icmp eq i32 %and.i, 0
  br i1 %switch.i, label %if.then2.i.tb_lc_dp_sink_available.exit_crit_edge, label %if.then2.i.if.end12.i_crit_edge

if.then2.i.if.end12.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.then2.i.tb_lc_dp_sink_available.exit_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit

if.else.i:                                        ; preds = %if.end.i
  %22 = and i32 %21, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %switch20.i = icmp eq i32 %22, 0
  br i1 %switch20.i, label %if.else.i.tb_lc_dp_sink_available.exit_crit_edge, label %if.else.i.if.end12.i_crit_edge

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end12.i

if.else.i.tb_lc_dp_sink_available.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then2.i.if.end12.i_crit_edge
  br label %tb_lc_dp_sink_available.exit

tb_lc_dp_sink_available.exit:                     ; preds = %if.end12.i, %if.else.i.tb_lc_dp_sink_available.exit_crit_edge, %if.then2.i.tb_lc_dp_sink_available.exit_crit_edge, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit_crit_edge, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit_crit_edge
  %retval.0.i9 = phi i32 [ -16, %if.end12.i ], [ %call1.i.i, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit_crit_edge ], [ 0, %if.then2.i.tb_lc_dp_sink_available.exit_crit_edge ], [ 0, %if.else.i.tb_lc_dp_sink_available.exit_crit_edge ], [ -16, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i9)
  %tobool.not = icmp eq i32 %retval.0.i9, 0
  br label %cleanup

cleanup:                                          ; preds = %tb_lc_dp_sink_available.exit, %for.cond.backedge.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool.not, %tb_lc_dp_sink_available.exit ], [ true, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %for.cond.backedge.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_dp_sink_alloc(ptr nocapture noundef readonly %sw, ptr noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear.i
  %port.010.i = getelementptr %struct.tb_port, ptr %4, i32 1
  %cmp.not11.i = icmp ugt ptr %port.010.i, %arrayidx2.i
  br i1 %cmp.not11.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %port.013.i = phi ptr [ %port.0.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %port.010.i, %if.end.for.body.i_crit_edge ]
  %.pn12.i = phi ptr [ %port.013.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %4, %if.end.for.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %port.013.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %land.rhs.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %type.i.i = getelementptr %struct.tb_port, ptr %.pn12.i, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %7 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %7, 1009088891019329536
  br i1 %cmp.i.i, label %tb_lc_dp_sink_from_port.exit, label %land.rhs.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.for.cond.backedge.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %land.rhs.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %port.0.i = getelementptr %struct.tb_port, ptr %port.013.i, i32 1
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.cleanup_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.backedge.i.cleanup_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_lc_dp_sink_from_port.exit:                     ; preds = %land.rhs.i.i
  %cmp3.i = icmp ne ptr %port.013.i, %in
  %conv.i = zext i1 %cmp3.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !20
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i55 = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i55, label %tb_sw_read.exit.i, label %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge

tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %tb_lc_dp_sink_from_port.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

tb_sw_read.exit.i:                                ; preds = %tb_lc_dp_sink_from_port.exit
  %cap_lc.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %11 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_lc.i, align 8
  %add.i = add i32 %12, 16
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %13 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %18 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %18, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %20 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %16, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge

tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.end.i:                                         ; preds = %tb_sw_read.exit.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  br i1 %cmp3.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i = and i32 %22, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.i = icmp eq i32 %and.i, 0
  br i1 %switch.i, label %if.then2.i.if.end6_crit_edge, label %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge

if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.then2.i.if.end6_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.else.i:                                        ; preds = %if.end.i
  %23 = and i32 %22, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %switch20.i = icmp eq i32 %23, 0
  br i1 %switch20.i, label %if.else.i.if.end6_crit_edge, label %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge

if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

tb_lc_dp_sink_available.exit.thread:              ; preds = %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge
  %retval.0.i56.ph = phi i32 [ -19, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ %call1.i.i, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ -16, %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ -16, %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %cleanup

if.end6:                                          ; preds = %if.else.i.if.end6_crit_edge, %if.then2.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  %24 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i57 = icmp eq i8 %25, 0
  br i1 %tobool.not.i57, label %tb_sw_read.exit, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end6
  %26 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cap_lc.i, align 8
  %add = add i32 %27, 16
  %28 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tb.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl.i, align 8
  %32 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i.i58 = load i64, ptr %route_hi.i.i.i, align 4
  %33 = lshr i64 %bf.load.i.i58, 1
  %shl.i.i = and i64 %33, 9223372032559808512
  %34 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i = zext i32 %35 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %31, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %if.end10, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %tb_sw_read.exit
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %. = select i1 %cmp3.i, i32 -241, i32 -16
  %.88 = select i1 %cmp3.i, i32 16, i32 1
  %and13 = and i32 %37, %.
  %or14 = or i32 %and13, %.88
  store i32 %or14, ptr %val, align 4
  %38 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i62 = icmp eq i8 %39, 0
  br i1 %tobool.not.i62, label %tb_sw_write.exit, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_write.exit:                                 ; preds = %if.end10
  %40 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_lc.i, align 8
  %add17 = add i32 %41, 16
  %42 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tb.i.i, align 8
  %ctl.i64 = getelementptr inbounds %struct.tb, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ctl.i64 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctl.i64, align 8
  %46 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load.i.i66 = load i64, ptr %route_hi.i.i.i, align 4
  %47 = lshr i64 %bf.load.i.i66, 1
  %shl.i.i67 = and i64 %47, 9223372032559808512
  %48 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i69 = zext i32 %49 to i64
  %or.i.i70 = or i64 %shl.i.i67, %conv2.i.i69
  %call1.i71 = call i32 @tb_cfg_write(ptr noundef %45, ptr noundef nonnull %val, i64 noundef %or.i.i70, i32 noundef 0, i32 noundef 2, i32 noundef %add17, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool19.not = icmp eq i32 %call1.i71, 0
  br i1 %tobool19.not, label %do.body, label %tb_sw_write.exit.cleanup_crit_edge

tb_sw_write.exit.cleanup_crit_edge:               ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_lc_dp_sink_alloc.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_lc_dp_sink_alloc, %if.then27)) #3
          to label %cleanup [label %if.then27], !srcloc !21

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %sw28 = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 1
  %50 = ptrtoint ptr %sw28 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sw28, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load.i74 = load i64, ptr %route_hi.i, align 4
  %59 = lshr i64 %bf.load.i74, 1
  %shl.i = and i64 %59, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %61 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %port, align 4
  %conv = zext i8 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_lc_dp_sink_alloc.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %or.i, i32 noundef %conv, i32 noundef %conv.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body, %tb_sw_write.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %tb_lc_dp_sink_available.exit.thread, %for.cond.backedge.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i71, %tb_sw_write.exit.cleanup_crit_edge ], [ 0, %if.then27 ], [ %retval.0.i56.ph, %tb_lc_dp_sink_available.exit.thread ], [ 0, %do.body ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ -22, %for.cond.backedge.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_dp_sink_dealloc(ptr nocapture noundef readonly %sw, ptr noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !20
  %generation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 15
  %1 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp = icmp ult i32 %2, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear.i
  %port.010.i = getelementptr %struct.tb_port, ptr %4, i32 1
  %cmp.not11.i = icmp ugt ptr %port.010.i, %arrayidx2.i
  br i1 %cmp.not11.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.backedge.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %port.013.i = phi ptr [ %port.0.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %port.010.i, %if.end.for.body.i_crit_edge ]
  %.pn12.i = phi ptr [ %port.013.i, %for.cond.backedge.i.for.body.i_crit_edge ], [ %4, %if.end.for.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %port.013.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.cond.backedge.i_crit_edge, label %land.rhs.i.i

for.body.i.for.cond.backedge.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

land.rhs.i.i:                                     ; preds = %for.body.i
  %type.i.i = getelementptr %struct.tb_port, ptr %.pn12.i, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %7 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %7, 1009088891019329536
  br i1 %cmp.i.i, label %tb_lc_dp_sink_from_port.exit, label %land.rhs.i.i.for.cond.backedge.i_crit_edge

land.rhs.i.i.for.cond.backedge.i_crit_edge:       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.backedge.i

for.cond.backedge.i:                              ; preds = %land.rhs.i.i.for.cond.backedge.i_crit_edge, %for.body.i.for.cond.backedge.i_crit_edge
  %port.0.i = getelementptr %struct.tb_port, ptr %port.013.i, i32 1
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.cond.backedge.i.cleanup_crit_edge, label %for.cond.backedge.i.for.body.i_crit_edge

for.cond.backedge.i.for.body.i_crit_edge:         ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.backedge.i.cleanup_crit_edge:            ; preds = %for.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_lc_dp_sink_from_port.exit:                     ; preds = %land.rhs.i.i
  %cmp3.i = icmp ne ptr %port.013.i, %in
  %conv.i = zext i1 %cmp3.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #3
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !20
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i54 = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i54, label %tb_sw_read.exit.i, label %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge

tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %tb_lc_dp_sink_from_port.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

tb_sw_read.exit.i:                                ; preds = %tb_lc_dp_sink_from_port.exit
  %cap_lc.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 18
  %11 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_lc.i, align 8
  %add.i = add i32 %12, 16
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %13 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %18 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %18, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %20 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = call i32 @tb_cfg_read(ptr noundef %16, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge

tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.end.i:                                         ; preds = %tb_sw_read.exit.i
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  br i1 %cmp3.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i = and i32 %22, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.i = icmp eq i32 %and.i, 0
  br i1 %switch.i, label %if.then2.i.if.end6_crit_edge, label %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge

if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.then2.i.if.end6_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.else.i:                                        ; preds = %if.end.i
  %23 = and i32 %22, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %switch20.i = icmp eq i32 %23, 0
  br i1 %switch20.i, label %if.else.i.if.end6_crit_edge, label %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge

if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_lc_dp_sink_available.exit.thread

if.else.i.if.end6_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

tb_lc_dp_sink_available.exit.thread:              ; preds = %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ -19, %tb_lc_dp_sink_from_port.exit.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ %call1.i.i, %tb_sw_read.exit.i.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ -16, %if.else.i.tb_lc_dp_sink_available.exit.thread_crit_edge ], [ -16, %if.then2.i.tb_lc_dp_sink_available.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  br label %cleanup

if.end6:                                          ; preds = %if.else.i.if.end6_crit_edge, %if.then2.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #3
  %24 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i56 = icmp eq i8 %25, 0
  br i1 %tobool.not.i56, label %tb_sw_read.exit, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end6
  %26 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cap_lc.i, align 8
  %add = add i32 %27, 16
  %28 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tb.i.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctl.i, align 8
  %32 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i.i57 = load i64, ptr %route_hi.i.i.i, align 4
  %33 = lshr i64 %bf.load.i.i57, 1
  %shl.i.i = and i64 %33, 9223372032559808512
  %34 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i = zext i32 %35 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %31, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %add, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %if.end10, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end10:                                         ; preds = %tb_sw_read.exit
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %. = select i1 %cmp3.i, i32 -241, i32 -16
  %and13 = and i32 %37, %.
  store i32 %and13, ptr %val, align 4
  %38 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %is_unplugged.i.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i61 = icmp eq i8 %39, 0
  br i1 %tobool.not.i61, label %tb_sw_write.exit, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_write.exit:                                 ; preds = %if.end10
  %40 = ptrtoint ptr %cap_lc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cap_lc.i, align 8
  %add16 = add i32 %41, 16
  %42 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tb.i.i, align 8
  %ctl.i63 = getelementptr inbounds %struct.tb, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %ctl.i63 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctl.i63, align 8
  %46 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load.i.i65 = load i64, ptr %route_hi.i.i.i, align 4
  %47 = lshr i64 %bf.load.i.i65, 1
  %shl.i.i66 = and i64 %47, 9223372032559808512
  %48 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i68 = zext i32 %49 to i64
  %or.i.i69 = or i64 %shl.i.i66, %conv2.i.i68
  %call1.i70 = call i32 @tb_cfg_write(ptr noundef %45, ptr noundef nonnull %val, i64 noundef %or.i.i69, i32 noundef 0, i32 noundef 2, i32 noundef %add16, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70)
  %tobool18.not = icmp eq i32 %call1.i70, 0
  br i1 %tobool18.not, label %do.body, label %tb_sw_write.exit.cleanup_crit_edge

tb_sw_write.exit.cleanup_crit_edge:               ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body:                                          ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_lc_dp_sink_dealloc.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_lc_dp_sink_dealloc, %if.then26)) #3
          to label %cleanup [label %if.then26], !srcloc !21

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %sw27 = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 1
  %50 = ptrtoint ptr %sw27 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sw27, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %57, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 4
  %58 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 8)
  %bf.load.i73 = load i64, ptr %route_hi.i, align 4
  %59 = lshr i64 %bf.load.i73, 1
  %shl.i = and i64 %59, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %61 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %62 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %port, align 4
  %conv = zext i8 %63 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_lc_dp_sink_dealloc.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.5, i64 noundef %or.i, i32 noundef %conv, i32 noundef %conv.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.body, %tb_sw_write.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %tb_lc_dp_sink_available.exit.thread, %for.cond.backedge.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i70, %tb_sw_write.exit.cleanup_crit_edge ], [ 0, %if.then26 ], [ %retval.0.i55.ph, %tb_lc_dp_sink_available.exit.thread ], [ 0, %do.body ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ -22, %for.cond.backedge.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_lc_force_power(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %in = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in) #3
  %0 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %in, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %1 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_unplugged.i, align 8, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tb_sw_write.exit_crit_edge

entry.tb_sw_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_sw_write.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %3 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %8 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %8, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %10 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_write(ptr noundef %6, ptr noundef nonnull %in, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 1856, i32 noundef 1) #3
  br label %tb_sw_write.exit

tb_sw_write.exit:                                 ; preds = %if.end.i, %entry.tb_sw_write.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -19, %entry.tb_sw_write.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in) #3
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/lc.c", i32 475, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tb_lc_dp_sink_alloc.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/thunderbolt/lc.c", i32 518, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @tb_lc_dp_sink_dealloc.__UNIQUE_ID_ddebug237, !7, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{!"auto-init"}
!21 = !{i64 2148239341, i64 2148239346, i64 2148239359, i64 2148239403, i64 2148239437, i64 2148239458}
