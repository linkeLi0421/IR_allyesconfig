; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/cap.c_pt.bc'
source_filename = "../drivers/thunderbolt/cap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tb_cap_any = type { %union.anon.72 }
%union.anon.72 = type { %struct.tb_cap_extended_long }
%struct.tb_cap_extended_long = type { i8, i8, i8, i8, i16, i16 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }

@tb_switch_next_cap.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_switch_next_cap\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/thunderbolt/cap.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%llx: unknown capability %#x at %#x\0A\00", [59 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 5]
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [29 x i8] c"../drivers/thunderbolt/cap.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 170, i32 3 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_port_next_cap(ptr nocapture noundef readonly %port, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.tb_cap_any, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp eq i32 %offset, 0
  %0 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %header, align 8
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %first_cap_offset = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %first_cap_offset to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load = load i96, ptr %first_cap_offset, align 4
  %bf.lshr = lshr i96 %bf.load, 88
  %bf.cast = trunc i96 %bf.lshr to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %11 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %11, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %15 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %9, ptr noundef nonnull %header, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %offset, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool1.not = icmp eq i32 %call4.i, 0
  br i1 %tobool1.not, label %if.end3, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %header, align 8
  %conv = zext i8 %17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %tb_port_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %conv, %if.end3 ], [ %bf.cast, %if.then ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_port_find_cap(ptr nocapture noundef readonly %port, i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca i32, align 4
  %header.i.i = alloca %struct.tb_cap_any, align 8
  %header.i = alloca %struct.tb_cap_any, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tb_port_enable_tmu(ptr noundef %port, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header.i, i32 0, i32 1
  %sw.i.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %port3.i.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %first_cap_offset.i.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %offset.0.i = phi i32 [ 0, %if.end ], [ %retval.0.i26.i, %do.cond.i.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i) #3
  %1 = ptrtoint ptr %header.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %header.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0.i)
  %tobool.not.i.i = icmp eq i32 %offset.0.i, 0
  %2 = ptrtoint ptr %header.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %header.i.i, align 8
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %first_cap_offset.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i.i = load i96, ptr %first_cap_offset.i.i, align 4
  %bf.lshr.i.i = lshr i96 %bf.load.i.i, 88
  %bf.cast.i.i = trunc i96 %bf.lshr.i.i to i32
  br label %tb_port_next_cap.exit.thread.i

if.end.i.i:                                       ; preds = %do.body.i
  %4 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw.i.i.i, align 4
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %tb_port_read.exit.i.i, label %tb_port_next_cap.exit.thread28.i

tb_port_next_cap.exit.thread28.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #3
  br label %cleanup.thread.i

tb_port_read.exit.i.i:                            ; preds = %if.end.i.i
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %13 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %15 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %16 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port3.i.i.i, align 4
  %conv.i.i.i = zext i8 %17 to i32
  %call4.i.i.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %header.i.i, i64 noundef %or.i.i.i.i, i32 noundef %conv.i.i.i, i32 noundef 1, i32 noundef %offset.0.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end3.i.i, label %tb_port_next_cap.exit.i

if.end3.i.i:                                      ; preds = %tb_port_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %header.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %header.i.i, align 8
  %conv.i.i = zext i8 %19 to i32
  br label %tb_port_next_cap.exit.thread.i

tb_port_next_cap.exit.thread.i:                   ; preds = %if.end3.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ %bf.cast.i.i, %if.then.i.i ], [ %conv.i.i, %if.end3.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #3
  br label %if.end.i

tb_port_next_cap.exit.i:                          ; preds = %tb_port_read.exit.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i, label %tb_port_next_cap.exit.i.cleanup.thread.i_crit_edge, label %tb_port_next_cap.exit.i.if.end.i_crit_edge

tb_port_next_cap.exit.i.if.end.i_crit_edge:       ; preds = %tb_port_next_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

tb_port_next_cap.exit.i.cleanup.thread.i_crit_edge: ; preds = %tb_port_next_cap.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread.i

if.end.i:                                         ; preds = %tb_port_next_cap.exit.i.if.end.i_crit_edge, %tb_port_next_cap.exit.thread.i
  %retval.0.i26.i = phi i32 [ %retval.0.i.ph.i, %tb_port_next_cap.exit.thread.i ], [ %call4.i.i.i, %tb_port_next_cap.exit.i.if.end.i_crit_edge ]
  %20 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw.i.i.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 20
  %22 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_unplugged.i.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i20.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i20.i, label %tb_port_read.exit.i, label %if.end.i.cleanup.thread.i_crit_edge

if.end.i.cleanup.thread.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread.i

tb_port_read.exit.i:                              ; preds = %if.end.i
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %29 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %29, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %31 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %32 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port3.i.i.i, align 4
  %conv.i21.i = zext i8 %33 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %27, ptr noundef nonnull %header.i, i64 noundef %or.i.i.i, i32 noundef %conv.i21.i, i32 noundef 1, i32 noundef %retval.0.i26.i, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %tb_port_read.exit.i.cleanup.thread.i_crit_edge

tb_port_read.exit.i.cleanup.thread.i_crit_edge:   ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %tb_port_read.exit.i.cleanup.thread.i_crit_edge, %if.end.i.cleanup.thread.i_crit_edge, %tb_port_next_cap.exit.i.cleanup.thread.i_crit_edge, %tb_port_next_cap.exit.thread28.i
  %retval.1.ph.i = phi i32 [ -19, %tb_port_next_cap.exit.thread28.i ], [ %call4.i.i, %tb_port_read.exit.i.cleanup.thread.i_crit_edge ], [ %call4.i.i.i, %tb_port_next_cap.exit.i.cleanup.thread.i_crit_edge ], [ -19, %if.end.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i) #3
  br label %__tb_port_find_cap.exit

cleanup.i:                                        ; preds = %tb_port_read.exit.i
  %34 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %0, align 1
  %conv.i = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %cap)
  %cmp5.i = icmp eq i32 %conv.i, %cap
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header.i) #3
  br i1 %cmp5.i, label %cleanup.i.__tb_port_find_cap.exit_crit_edge, label %do.cond.i

cleanup.i.__tb_port_find_cap.exit_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__tb_port_find_cap.exit

do.cond.i:                                        ; preds = %cleanup.i
  %cmp10.not.i = icmp eq i32 %retval.0.i26.i, 0
  br i1 %cmp10.not.i, label %do.cond.i.__tb_port_find_cap.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body.i

do.cond.i.__tb_port_find_cap.exit_crit_edge:      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__tb_port_find_cap.exit

__tb_port_find_cap.exit:                          ; preds = %do.cond.i.__tb_port_find_cap.exit_crit_edge, %cleanup.i.__tb_port_find_cap.exit_crit_edge, %cleanup.thread.i
  %retval.2.i = phi i32 [ %retval.1.ph.i, %cleanup.thread.i ], [ %retval.0.i26.i, %cleanup.i.__tb_port_find_cap.exit_crit_edge ], [ -2, %do.cond.i.__tb_port_find_cap.exit_crit_edge ]
  %36 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sw.i.i.i, align 4
  %config.i.i = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %39)
  %cmp.i.i = icmp eq i16 %39, -32634
  br i1 %cmp.i.i, label %tb_switch_is_light_ridge.exit.i, label %__tb_port_find_cap.exit.tb_port_dummy_read.exit_crit_edge

__tb_port_find_cap.exit.tb_port_dummy_read.exit_crit_edge: ; preds = %__tb_port_find_cap.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_port_dummy_read.exit

tb_switch_is_light_ridge.exit.i:                  ; preds = %__tb_port_find_cap.exit
  %device_id.i.i = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %device_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5395, i16 %41)
  %cmp4.i.i = icmp eq i16 %41, 5395
  br i1 %cmp4.i.i, label %if.then.i, label %tb_switch_is_light_ridge.exit.i.tb_port_dummy_read.exit_crit_edge

tb_switch_is_light_ridge.exit.i.tb_port_dummy_read.exit_crit_edge: ; preds = %tb_switch_is_light_ridge.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_port_dummy_read.exit

if.then.i:                                        ; preds = %tb_switch_is_light_ridge.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #3
  %42 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %dummy.i, align 4, !annotation !16
  %is_unplugged.i.i8 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 20
  %43 = ptrtoint ptr %is_unplugged.i.i8 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_unplugged.i.i8, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i9 = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i9, label %if.end.i.i20, label %if.then.i.tb_port_read.exit.i21_crit_edge

if.then.i.tb_port_read.exit.i21_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %tb_port_read.exit.i21

if.end.i.i20:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %tb.i.i10 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 5
  %45 = ptrtoint ptr %tb.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tb.i.i10, align 8
  %ctl.i.i11 = getelementptr inbounds %struct.tb, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ctl.i.i11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctl.i.i11, align 8
  %route_hi.i.i.i12 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %route_hi.i.i.i12 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load.i.i.i13 = load i64, ptr %route_hi.i.i.i12, align 4
  %50 = lshr i64 %bf.load.i.i.i13, 1
  %shl.i.i.i14 = and i64 %50, 9223372032559808512
  %route_lo.i.i.i15 = getelementptr inbounds %struct.tb_switch, ptr %37, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %route_lo.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route_lo.i.i.i15, align 8
  %conv2.i.i.i16 = zext i32 %52 to i64
  %or.i.i.i17 = or i64 %shl.i.i.i14, %conv2.i.i.i16
  %53 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port3.i.i.i, align 4
  %conv.i.i18 = zext i8 %54 to i32
  %call4.i.i19 = call i32 @tb_cfg_read(ptr noundef %48, ptr noundef nonnull %dummy.i, i64 noundef %or.i.i.i17, i32 noundef %conv.i.i18, i32 noundef 1, i32 noundef 0, i32 noundef 1) #3
  br label %tb_port_read.exit.i21

tb_port_read.exit.i21:                            ; preds = %if.end.i.i20, %if.then.i.tb_port_read.exit.i21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #3
  br label %tb_port_dummy_read.exit

tb_port_dummy_read.exit:                          ; preds = %tb_port_read.exit.i21, %tb_switch_is_light_ridge.exit.i.tb_port_dummy_read.exit_crit_edge, %__tb_port_find_cap.exit.tb_port_dummy_read.exit_crit_edge
  %call2 = call fastcc i32 @tb_port_enable_tmu(ptr noundef %port, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %tb_port_dummy_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.2.i, %tb_port_dummy_read.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_port_enable_tmu(ptr nocapture noundef readonly %port, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #3
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !16
  %config.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %config.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %4)
  %cmp.i = icmp eq i16 %4, -32634
  br i1 %cmp.i, label %tb_switch_is_light_ridge.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_switch_is_light_ridge.exit:                    ; preds = %entry
  %device_id.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %device_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5395, i16 %6)
  %cmp4.i = icmp eq i16 %6, 5395
  br i1 %cmp4.i, label %tb_switch_is_light_ridge.exit.if.end5_crit_edge, label %tb_switch_is_eagle_ridge.exit

tb_switch_is_light_ridge.exit.if.end5_crit_edge:  ; preds = %tb_switch_is_light_ridge.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

tb_switch_is_eagle_ridge.exit:                    ; preds = %tb_switch_is_light_ridge.exit
  %7 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device_id.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5402, i16 %8)
  %cmp4.i25 = icmp eq i16 %8, 5402
  br i1 %cmp4.i25, label %tb_switch_is_eagle_ridge.exit.if.end5_crit_edge, label %tb_switch_is_eagle_ridge.exit.cleanup_crit_edge

tb_switch_is_eagle_ridge.exit.cleanup_crit_edge:  ; preds = %tb_switch_is_eagle_ridge.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_switch_is_eagle_ridge.exit.if.end5_crit_edge:  ; preds = %tb_switch_is_eagle_ridge.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end5:                                          ; preds = %tb_switch_is_eagle_ridge.exit.if.end5_crit_edge, %tb_switch_is_light_ridge.exit.if.end5_crit_edge
  %offset.0 = phi i32 [ 38, %tb_switch_is_light_ridge.exit.if.end5_crit_edge ], [ 42, %tb_switch_is_eagle_ridge.exit.if.end5_crit_edge ]
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end5
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %16 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %16, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %18 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %14, ptr noundef nonnull %value, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %offset.0, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end8, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end8:                                          ; preds = %tb_sw_read.exit
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 4
  %and = and i32 %20, -1048577
  %masksel = select i1 %enable, i32 1048576, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %value, align 4
  %21 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i28 = icmp eq i8 %22, 0
  br i1 %tobool.not.i28, label %if.end.i38, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i38:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %23 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb.i, align 8
  %ctl.i30 = getelementptr inbounds %struct.tb, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ctl.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl.i30, align 8
  %27 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load.i.i32 = load i64, ptr %route_hi.i.i, align 4
  %28 = lshr i64 %bf.load.i.i32, 1
  %shl.i.i33 = and i64 %28, 9223372032559808512
  %29 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i35 = zext i32 %30 to i64
  %or.i.i36 = or i64 %shl.i.i33, %conv2.i.i35
  %call1.i37 = call i32 @tb_cfg_write(ptr noundef %26, ptr noundef nonnull %value, i64 noundef %or.i.i36, i32 noundef 0, i32 noundef 2, i32 noundef %offset.0, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end.i38, %if.end8.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %tb_switch_is_eagle_ridge.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %tb_switch_is_eagle_ridge.exit.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i37, %if.end.i38 ], [ -19, %if.end8.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_next_cap(ptr nocapture noundef readonly %sw, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.tb_cap_any, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #3
  %0 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 3
  %2 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset)
  %tobool.not = icmp eq i32 %offset, 0
  %3 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %header, align 8
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %first_cap_offset = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %first_cap_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %first_cap_offset, align 4
  %bf.lshr = lshr i32 %bf.load, 24
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %header, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %offset, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool1.not = icmp eq i32 %call1.i, 0
  br i1 %tobool1.not, label %if.end3, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %tb_sw_read.exit
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %0, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %do.body [
    i8 3, label %sw.bb
    i8 5, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %header, align 8
  %conv4 = zext i8 %19 to i32
  br label %cleanup

sw.bb5:                                           ; preds = %if.end3
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %2, align 4
  %conv9 = zext i16 %23 to i32
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  %24 = ptrtoint ptr %header to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %header, align 8
  %conv11 = zext i8 %25 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_switch_next_cap.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_switch_next_cap, %if.then18)) #3
          to label %sw.epilog [label %if.then18], !srcloc !17

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %26 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tb.i, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %32 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i.i, align 4
  %33 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %33, 9223372032559808512
  %34 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i = zext i32 %35 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %36 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %0, align 1
  %conv21 = zext i8 %37 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_switch_next_cap.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %or.i, i32 noundef %conv21, i32 noundef %offset) #3
  br label %cleanup

sw.epilog:                                        ; preds = %do.body, %if.then7
  %ret.0 = phi i32 [ %conv9, %if.then7 ], [ -22, %do.body ]
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, 65534
  %spec.select = select i1 %cmp, i32 0, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then18, %if.else, %sw.bb, %tb_sw_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -22, %if.then18 ], [ %conv4, %sw.bb ], [ %conv11, %if.else ], [ %spec.select, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_find_cap(ptr nocapture noundef readonly %sw, i32 noundef %cap) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.tb_cap_any, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 1
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %call, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #3
  %1 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %header, align 8
  %call = call i32 @tb_switch_next_cap(ptr noundef %sw, i32 noundef %offset.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.cleanup.thread_crit_edge, label %if.end

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

if.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

tb_sw_read.exit:                                  ; preds = %if.end
  %4 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl.i, align 8
  %8 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %9 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %9, 9223372032559808512
  %10 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %11 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %7, ptr noundef nonnull %header, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %call, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %cleanup, label %tb_sw_read.exit.cleanup.thread_crit_edge

tb_sw_read.exit.cleanup.thread_crit_edge:         ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %tb_sw_read.exit.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %do.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call1.i, %tb_sw_read.exit.cleanup.thread_crit_edge ], [ %call, %do.body.cleanup.thread_crit_edge ], [ -19, %if.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  br label %cleanup11

cleanup:                                          ; preds = %tb_sw_read.exit
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %0, align 1
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %cap)
  %cmp5 = icmp eq i32 %conv, %cap
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  br i1 %cmp5, label %cleanup.cleanup11_crit_edge, label %do.cond

cleanup.cleanup11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup11

do.cond:                                          ; preds = %cleanup
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %do.cond.cleanup11_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.cond.cleanup11_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup11

cleanup11:                                        ; preds = %do.cond.cleanup11_crit_edge, %cleanup.cleanup11_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ -2, %do.cond.cleanup11_crit_edge ], [ %call, %cleanup.cleanup11_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_switch_find_vse_cap(ptr nocapture noundef readonly %sw, i32 noundef %vsec) local_unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.tb_cap_any, align 8
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tb_cap_extended_long, ptr %header, i32 0, i32 2
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %offset.0 = phi i32 [ 0, %entry ], [ %call, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %header) #3
  %2 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %header, align 8
  %call = call i32 @tb_switch_next_cap(ptr noundef %sw, i32 noundef %offset.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body.cleanup.thread_crit_edge, label %if.end

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

if.end:                                           ; preds = %do.body
  %3 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_unplugged.i, align 8, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end.cleanup.thread_crit_edge

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

tb_sw_read.exit:                                  ; preds = %if.end
  %5 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i, align 8
  %9 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %10 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %10, 9223372032559808512
  %11 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %12 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %header, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef %call, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end3, label %tb_sw_read.exit.cleanup.thread_crit_edge

tb_sw_read.exit.cleanup.thread_crit_edge:         ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

if.end3:                                          ; preds = %tb_sw_read.exit
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %14)
  %cmp4 = icmp eq i8 %14, 5
  br i1 %cmp4, label %land.lhs.true, label %if.end3.do.cond_crit_edge

if.end3.do.cond_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

land.lhs.true:                                    ; preds = %if.end3
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 2
  %conv6 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %vsec)
  %cmp7 = icmp eq i32 %conv6, %vsec
  br i1 %cmp7, label %land.lhs.true.cleanup.thread_crit_edge, label %land.lhs.true.do.cond_crit_edge

land.lhs.true.do.cond_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.cond

land.lhs.true.cleanup.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %land.lhs.true.cleanup.thread_crit_edge, %tb_sw_read.exit.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge, %do.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ %call, %land.lhs.true.cleanup.thread_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup.thread_crit_edge ], [ %call, %do.body.cleanup.thread_crit_edge ], [ -19, %if.end.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  br label %cleanup13

do.cond:                                          ; preds = %land.lhs.true.do.cond_crit_edge, %if.end3.do.cond_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %header) #3
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %do.cond.cleanup13_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.cond.cleanup13_crit_edge:                      ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup13

cleanup13:                                        ; preds = %do.cond.cleanup13_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ -2, %do.cond.cleanup13_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/cap.c", i32 170, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tb_switch_next_cap.__UNIQUE_ID_ddebug236, !1, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{!"auto-init"}
!17 = !{i64 2148204885, i64 2148204890, i64 2148204903, i64 2148204947, i64 2148204981, i64 2148205002}
