; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_port.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_port.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.phylink_link_state = type { [3 x i32], [3 x i32], i32, i32, i32, i32, i8 }

@lan966x_port_link_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013AFI timeout chip port %u\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lan966x_port_link_down\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_port.c\00", [42 x i8] zeroinitializer }, align 32
@lan966x_port_link_down._entry_ptr = internal global ptr @lan966x_port_link_down._entry, section ".printk_index", align 4
@lan966x_port_link_down._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Flush timeout chip port %u\00", [35 x i8] zeroinitializer }, align 32
@lan966x_port_link_down._entry_ptr.5 = internal global ptr @lan966x_port_link_down._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 100, i64 1000, i64 2500]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 21, i64 22]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 18, i64 21]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 46, i32 4 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_port.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 110, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 238, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @lan966x_port_link_down._entry, ptr @lan966x_port_link_down._entry.3, ptr @lan966x_port_link_down._entry_ptr, ptr @lan966x_port_link_down._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_port_link_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_port_link_down._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_port_config_down(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1.i, align 4
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %3 to i32
  %regs.i.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %3)
  %cmp20.not.i.i.i = icmp ult i8 %3, 10
  br i1 %cmp20.not.i.i.i, label %entry.if.end42.i.i.i_crit_edge, label %do.end36.i.i.i, !prof !21

entry.if.end42.i.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i.i

do.end36.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end36.i.i.i, %entry.if.end42.i.i.i_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 98816
  %mul.i.i.i = shl nuw nsw i32 %conv.i, 3
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %add.ptr82.i.i.i = getelementptr i8, ptr %add.ptr81.i.i.i, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp20.not.i.i.i, label %if.end42.i.i.i.lan_rmw.exit.i_crit_edge, label %do.end36.i5.i.i, !prof !21

if.end42.i.i.i.lan_rmw.exit.i_crit_edge:          ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit.i

do.end36.i5.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end36.i5.i.i, %if.end42.i.i.i.lan_rmw.exit.i_crit_edge
  %7 = and i32 %6, 16580351
  %8 = or i32 %7, 256
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i11.i.i = getelementptr i8, ptr %10, i32 98816
  %add.ptr81.i13.i.i = getelementptr i8, ptr %add.ptr.i11.i.i, i32 %mul.i.i.i
  %add.ptr82.i14.i.i = getelementptr i8, ptr %add.ptr81.i13.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i.i, i32 %8) #4, !srcloc !25
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i.while.cond.i_crit_edge, %lan_rmw.exit.i
  %delay.0.i = phi i32 [ 0, %lan_rmw.exit.i ], [ %inc.i, %if.end.i.while.cond.i_crit_edge ]
  %11 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %chip_port.i, align 4
  %conv31.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %12)
  %cmp20.not.i.i402.i = icmp ult i8 %12, 10
  br i1 %cmp20.not.i.i402.i, label %while.cond.i.lan_rd.exit.i_crit_edge, label %do.end36.i.i403.i, !prof !21

while.cond.i.lan_rd.exit.i_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rd.exit.i

do.end36.i.i403.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %lan_rd.exit.i

lan_rd.exit.i:                                    ; preds = %do.end36.i.i403.i, %while.cond.i.lan_rd.exit.i_crit_edge
  %13 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i407.i = getelementptr i8, ptr %14, i32 98816
  %mul.i.i408.i = shl nuw nsw i32 %conv31.i, 3
  %add.ptr81.i.i409.i = getelementptr i8, ptr %add.ptr.i.i407.i, i32 %mul.i.i408.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i409.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %16 = and i32 %15, 65287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %lan_rd.exit.i.while.end.i_crit_edge, label %if.end.i

lan_rd.exit.i.while.end.i_crit_edge:              ; preds = %lan_rd.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

if.end.i:                                         ; preds = %lan_rd.exit.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc.i = add nuw nsw i32 %delay.0.i, 1
  %cmp.i = icmp eq i32 %inc.i, 2000
  br i1 %cmp.i, label %do.end52.i, label %if.end.i.while.cond.i_crit_edge

if.end.i.while.cond.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i

do.end52.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_port.i, align 4
  %conv55.i = zext i8 %18 to i32
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv55.i) #7
  br label %while.end.i

while.end.i:                                      ; preds = %do.end52.i, %lan_rd.exit.i.while.end.i_crit_edge
  %19 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_port.i, align 4
  %conv75.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %20)
  %cmp.not.i.i.i = icmp ult i8 %20, 8
  br i1 %cmp.not.i.i.i, label %while.end.i.if.end.i.i.i_crit_edge, label %do.end.i.i.i, !prof !21

while.end.i.if.end.i.i.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %while.end.i.if.end.i.i.i_crit_edge
  %add.i.i.i = add nuw nsw i32 %conv75.i, 13
  %arrayidx.i.i412.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %21 = ptrtoint ptr %arrayidx.i.i412.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i412.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.lan_rmw.exit415.i_crit_edge, label %do.end.i2.i.i, !prof !21

if.end.i.i.i.lan_rmw.exit415.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit415.i

do.end.i2.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit415.i

lan_rmw.exit415.i:                                ; preds = %do.end.i2.i.i, %if.end.i.i.i.lan_rmw.exit415.i_crit_edge
  %24 = or i32 %23, 268435456
  %25 = ptrtoint ptr %arrayidx.i.i412.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i412.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #4, !srcloc !25
  %27 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %chip_port.i, align 4
  %conv93.i = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %28)
  %cmp.not.i.i417.i = icmp ult i8 %28, 8
  br i1 %cmp.not.i.i417.i, label %lan_rmw.exit415.i.if.end.i.i419.i_crit_edge, label %do.end.i.i418.i, !prof !21

lan_rmw.exit415.i.if.end.i.i419.i_crit_edge:      ; preds = %lan_rmw.exit415.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i419.i

do.end.i.i418.i:                                  ; preds = %lan_rmw.exit415.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i419.i

if.end.i.i419.i:                                  ; preds = %do.end.i.i418.i, %lan_rmw.exit415.i.if.end.i.i419.i_crit_edge
  %add.i.i421.i = add nuw nsw i32 %conv93.i, 13
  %arrayidx.i.i422.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i421.i
  %29 = ptrtoint ptr %arrayidx.i.i422.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i422.i, align 4
  %add.ptr.i.i423.i = getelementptr i8, ptr %30, i32 28
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i423.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i417.i, label %if.end.i.i419.i.lan_rmw.exit427.i_crit_edge, label %do.end.i2.i424.i, !prof !21

if.end.i.i419.i.lan_rmw.exit427.i_crit_edge:      ; preds = %if.end.i.i419.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit427.i

do.end.i2.i424.i:                                 ; preds = %if.end.i.i419.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit427.i

lan_rmw.exit427.i:                                ; preds = %do.end.i2.i424.i, %if.end.i.i419.i.lan_rmw.exit427.i_crit_edge
  %32 = and i32 %31, -268435457
  %33 = ptrtoint ptr %arrayidx.i.i422.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i422.i, align 4
  %add.ptr.i11.i426.i = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i426.i, i32 %32) #4, !srcloc !25
  %35 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %chip_port.i, align 4
  %conv111.i = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %36)
  %cmp51.not.i.i.i = icmp ult i8 %36, 9
  br i1 %cmp51.not.i.i.i, label %lan_rmw.exit427.i.lan_addr.exit.i.i_crit_edge, label %do.end67.i.i.i, !prof !21

lan_rmw.exit427.i.lan_addr.exit.i.i_crit_edge:    ; preds = %lan_rmw.exit427.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i.i

do.end67.i.i.i:                                   ; preds = %lan_rmw.exit427.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end67.i.i.i, %lan_rmw.exit427.i.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i431.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 46
  %37 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i.i433.i = getelementptr i8, ptr %38, i32 28088
  %mul83.i.i.i = shl nuw nsw i32 %conv111.i, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i433.i, i32 %mul83.i.i.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i.i, label %lan_addr.exit.i.i.lan_rmw.exit437.i_crit_edge, label %do.end67.i8.i.i, !prof !21

lan_addr.exit.i.i.lan_rmw.exit437.i_crit_edge:    ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit437.i

do.end67.i8.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit437.i

lan_rmw.exit437.i:                                ; preds = %do.end67.i8.i.i, %lan_addr.exit.i.i.lan_rmw.exit437.i_crit_edge
  %40 = and i32 %39, -1025
  %41 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i14.i436.i = getelementptr i8, ptr %42, i32 28088
  %add.ptr84.i16.i.i = getelementptr i8, ptr %add.ptr82.i14.i436.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i.i, i32 %40) #4, !srcloc !25
  %43 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chip_port.i, align 4
  %conv129.i = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %44)
  %cmp51.not.i.i440.i = icmp ult i8 %44, 10
  br i1 %cmp51.not.i.i440.i, label %lan_rmw.exit437.i.lan_addr.exit.i447.i_crit_edge, label %do.end67.i.i442.i, !prof !21

lan_rmw.exit437.i.lan_addr.exit.i447.i_crit_edge: ; preds = %lan_rmw.exit437.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i447.i

do.end67.i.i442.i:                                ; preds = %lan_rmw.exit437.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i447.i

lan_addr.exit.i447.i:                             ; preds = %do.end67.i.i442.i, %lan_rmw.exit437.i.lan_addr.exit.i447.i_crit_edge
  %45 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr.i.i444.i = getelementptr i8, ptr %46, i32 28008
  %mul83.i.i445.i = shl nuw nsw i32 %conv129.i, 2
  %add.ptr84.i.i446.i = getelementptr i8, ptr %add.ptr.i.i444.i, i32 %mul83.i.i445.i
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i446.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i440.i, label %lan_addr.exit.i447.i.lan_rmw.exit453.i_crit_edge, label %do.end67.i8.i448.i, !prof !21

lan_addr.exit.i447.i.lan_rmw.exit453.i_crit_edge: ; preds = %lan_addr.exit.i447.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit453.i

do.end67.i8.i448.i:                               ; preds = %lan_addr.exit.i447.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit453.i

lan_rmw.exit453.i:                                ; preds = %do.end67.i8.i448.i, %lan_addr.exit.i447.i.lan_rmw.exit453.i_crit_edge
  %48 = or i32 %47, 33554432
  %49 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr.i11.i451.i = getelementptr i8, ptr %50, i32 28008
  %add.ptr84.i16.i452.i = getelementptr i8, ptr %add.ptr.i11.i451.i, i32 %mul83.i.i445.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i452.i, i32 %48) #4, !srcloc !25
  %51 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %chip_port.i, align 4
  %conv147.i = zext i8 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %52)
  %cmp51.not.i.i456.i = icmp ult i8 %52, 9
  br i1 %cmp51.not.i.i456.i, label %lan_rmw.exit453.i.lan_addr.exit.i463.i_crit_edge, label %do.end67.i.i458.i, !prof !21

lan_rmw.exit453.i.lan_addr.exit.i463.i_crit_edge: ; preds = %lan_rmw.exit453.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i463.i

do.end67.i.i458.i:                                ; preds = %lan_rmw.exit453.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i463.i

lan_addr.exit.i463.i:                             ; preds = %do.end67.i.i458.i, %lan_rmw.exit453.i.lan_addr.exit.i463.i_crit_edge
  %arrayidx.i.i459.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 52
  %53 = ptrtoint ptr %arrayidx.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i459.i, align 4
  %add.ptr.i.i460.i = getelementptr i8, ptr %54, i32 4296
  %mul83.i.i461.i = shl nuw nsw i32 %conv147.i, 2
  %add.ptr84.i.i462.i = getelementptr i8, ptr %add.ptr.i.i460.i, i32 %mul83.i.i461.i
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i462.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i456.i, label %lan_addr.exit.i463.i.lan_rmw.exit468.i_crit_edge, label %do.end67.i8.i464.i, !prof !21

lan_addr.exit.i463.i.lan_rmw.exit468.i_crit_edge: ; preds = %lan_addr.exit.i463.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit468.i

do.end67.i8.i464.i:                               ; preds = %lan_addr.exit.i463.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit468.i

lan_rmw.exit468.i:                                ; preds = %do.end67.i8.i464.i, %lan_addr.exit.i463.i.lan_rmw.exit468.i_crit_edge
  %56 = and i32 %55, -16777217
  %57 = ptrtoint ptr %arrayidx.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i.i459.i, align 4
  %add.ptr.i11.i466.i = getelementptr i8, ptr %58, i32 4296
  %add.ptr84.i16.i467.i = getelementptr i8, ptr %add.ptr.i11.i466.i, i32 %mul83.i.i461.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i467.i, i32 %56) #4, !srcloc !25
  %59 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %chip_port.i, align 4
  %conv165.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %60)
  %cmp51.not.i.i471.i = icmp ult i8 %60, 9
  br i1 %cmp51.not.i.i471.i, label %lan_rmw.exit468.i.lan_addr.exit.i479.i_crit_edge, label %do.end67.i.i473.i, !prof !21

lan_rmw.exit468.i.lan_addr.exit.i479.i_crit_edge: ; preds = %lan_rmw.exit468.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i479.i

do.end67.i.i473.i:                                ; preds = %lan_rmw.exit468.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i479.i

lan_addr.exit.i479.i:                             ; preds = %do.end67.i.i473.i, %lan_rmw.exit468.i.lan_addr.exit.i479.i_crit_edge
  %61 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i.i476.i = getelementptr i8, ptr %62, i32 28088
  %mul83.i.i477.i = shl nuw nsw i32 %conv165.i, 2
  %add.ptr84.i.i478.i = getelementptr i8, ptr %add.ptr82.i.i476.i, i32 %mul83.i.i477.i
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i478.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i471.i, label %lan_addr.exit.i479.i.lan_rmw.exit485.i_crit_edge, label %do.end67.i8.i480.i, !prof !21

lan_addr.exit.i479.i.lan_rmw.exit485.i_crit_edge: ; preds = %lan_addr.exit.i479.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit485.i

do.end67.i8.i480.i:                               ; preds = %lan_addr.exit.i479.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit485.i

lan_rmw.exit485.i:                                ; preds = %do.end67.i8.i480.i, %lan_addr.exit.i479.i.lan_rmw.exit485.i_crit_edge
  %64 = and i32 %63, 267452415
  %65 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i14.i483.i = getelementptr i8, ptr %66, i32 28088
  %add.ptr84.i16.i484.i = getelementptr i8, ptr %add.ptr82.i14.i483.i, i32 %mul83.i.i477.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i484.i, i32 %64) #4, !srcloc !25
  tail call void @usleep_range_state(i32 noundef 8000, i32 noundef 9000, i32 noundef 2) #4
  %67 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %chip_port.i, align 4
  %conv183.i = zext i8 %68 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %68)
  %cmp51.not.i.i488.i = icmp ult i8 %68, 8
  br i1 %cmp51.not.i.i488.i, label %lan_rmw.exit485.i.lan_addr.exit.i496.i_crit_edge, label %do.end67.i.i490.i, !prof !21

lan_rmw.exit485.i.lan_addr.exit.i496.i_crit_edge: ; preds = %lan_rmw.exit485.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i496.i

do.end67.i.i490.i:                                ; preds = %lan_rmw.exit485.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i496.i

lan_addr.exit.i496.i:                             ; preds = %do.end67.i.i490.i, %lan_rmw.exit485.i.lan_addr.exit.i496.i_crit_edge
  %69 = ptrtoint ptr %arrayidx.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i.i459.i, align 4
  %add.ptr82.i.i493.i = getelementptr i8, ptr %70, i32 4212
  %mul83.i.i494.i = shl nuw nsw i32 %conv183.i, 2
  %add.ptr84.i.i495.i = getelementptr i8, ptr %add.ptr82.i.i493.i, i32 %mul83.i.i494.i
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i495.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i488.i, label %lan_addr.exit.i496.i.lan_rmw.exit502.i_crit_edge, label %do.end67.i8.i497.i, !prof !21

lan_addr.exit.i496.i.lan_rmw.exit502.i_crit_edge: ; preds = %lan_addr.exit.i496.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit502.i

do.end67.i8.i497.i:                               ; preds = %lan_addr.exit.i496.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit502.i

lan_rmw.exit502.i:                                ; preds = %do.end67.i8.i497.i, %lan_addr.exit.i496.i.lan_rmw.exit502.i_crit_edge
  %72 = and i32 %71, -33554433
  %73 = ptrtoint ptr %arrayidx.i.i459.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i.i459.i, align 4
  %add.ptr82.i14.i500.i = getelementptr i8, ptr %74, i32 4212
  %add.ptr84.i16.i501.i = getelementptr i8, ptr %add.ptr82.i14.i500.i, i32 %mul83.i.i494.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i501.i, i32 %72) #4, !srcloc !25
  %75 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %chip_port.i, align 4
  %conv201.i = zext i8 %76 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %76)
  %cmp51.not.i.i505.i = icmp ult i8 %76, 9
  br i1 %cmp51.not.i.i505.i, label %lan_rmw.exit502.i.lan_addr.exit.i513.i_crit_edge, label %do.end67.i.i507.i, !prof !21

lan_rmw.exit502.i.lan_addr.exit.i513.i_crit_edge: ; preds = %lan_rmw.exit502.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i513.i

do.end67.i.i507.i:                                ; preds = %lan_rmw.exit502.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i513.i

lan_addr.exit.i513.i:                             ; preds = %do.end67.i.i507.i, %lan_rmw.exit502.i.lan_addr.exit.i513.i_crit_edge
  %77 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i.i510.i = getelementptr i8, ptr %78, i32 28088
  %mul83.i.i511.i = shl nuw nsw i32 %conv201.i, 2
  %add.ptr84.i.i512.i = getelementptr i8, ptr %add.ptr82.i.i510.i, i32 %mul83.i.i511.i
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i512.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i505.i, label %lan_addr.exit.i513.i.lan_rmw.exit520.i_crit_edge, label %do.end67.i8.i514.i, !prof !21

lan_addr.exit.i513.i.lan_rmw.exit520.i_crit_edge: ; preds = %lan_addr.exit.i513.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit520.i

do.end67.i8.i514.i:                               ; preds = %lan_addr.exit.i513.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit520.i

lan_rmw.exit520.i:                                ; preds = %do.end67.i8.i514.i, %lan_addr.exit.i513.i.lan_rmw.exit520.i_crit_edge
  %80 = or i32 %79, 50331648
  %81 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i14.i518.i = getelementptr i8, ptr %82, i32 28088
  %add.ptr84.i16.i519.i = getelementptr i8, ptr %add.ptr82.i14.i518.i, i32 %mul83.i.i511.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i519.i, i32 %80) #4, !srcloc !25
  %83 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %chip_port.i, align 4
  %conv219.i = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %84)
  %cmp51.not.i.i523.i = icmp ult i8 %84, 10
  br i1 %cmp51.not.i.i523.i, label %lan_rmw.exit520.i.lan_addr.exit.i530.i_crit_edge, label %do.end67.i.i525.i, !prof !21

lan_rmw.exit520.i.lan_addr.exit.i530.i_crit_edge: ; preds = %lan_rmw.exit520.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i530.i

do.end67.i.i525.i:                                ; preds = %lan_rmw.exit520.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i530.i

lan_addr.exit.i530.i:                             ; preds = %do.end67.i.i525.i, %lan_rmw.exit520.i.lan_addr.exit.i530.i_crit_edge
  %85 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr.i.i527.i = getelementptr i8, ptr %86, i32 28008
  %mul83.i.i528.i = shl nuw nsw i32 %conv219.i, 2
  %add.ptr84.i.i529.i = getelementptr i8, ptr %add.ptr.i.i527.i, i32 %mul83.i.i528.i
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i529.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i523.i, label %lan_addr.exit.i530.i.lan_rmw.exit535.i_crit_edge, label %do.end67.i8.i531.i, !prof !21

lan_addr.exit.i530.i.lan_rmw.exit535.i_crit_edge: ; preds = %lan_addr.exit.i530.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit535.i

do.end67.i8.i531.i:                               ; preds = %lan_addr.exit.i530.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit535.i

lan_rmw.exit535.i:                                ; preds = %do.end67.i8.i531.i, %lan_addr.exit.i530.i.lan_rmw.exit535.i_crit_edge
  %88 = and i32 %87, -33554433
  %89 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr.i11.i533.i = getelementptr i8, ptr %90, i32 28008
  %add.ptr84.i16.i534.i = getelementptr i8, ptr %add.ptr.i11.i533.i, i32 %mul83.i.i528.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i534.i, i32 %88) #4, !srcloc !25
  br label %while.cond220.i

while.cond220.i:                                  ; preds = %if.end245.i.while.cond220.i_crit_edge, %lan_rmw.exit535.i
  %delay.1.i = phi i32 [ 0, %lan_rmw.exit535.i ], [ %inc246.i, %if.end245.i.while.cond220.i_crit_edge ]
  %91 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %chip_port.i, align 4
  %conv223.i = zext i8 %92 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %92)
  %cmp51.not.i.i537.i = icmp ult i8 %92, 9
  br i1 %cmp51.not.i.i537.i, label %while.cond220.i.lan_rd.exit547.i_crit_edge, label %do.end67.i.i539.i, !prof !21

while.cond220.i.lan_rd.exit547.i_crit_edge:       ; preds = %while.cond220.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rd.exit547.i

do.end67.i.i539.i:                                ; preds = %while.cond220.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rd.exit547.i

lan_rd.exit547.i:                                 ; preds = %do.end67.i.i539.i, %while.cond220.i.lan_rd.exit547.i_crit_edge
  %93 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i.i543.i = getelementptr i8, ptr %94, i32 28172
  %mul83.i.i544.i = shl nuw nsw i32 %conv223.i, 2
  %add.ptr84.i.i545.i = getelementptr i8, ptr %add.ptr82.i.i543.i, i32 %mul83.i.i544.i
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i545.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %95)
  %tobool243.not.i = icmp ult i32 %95, 16777216
  br i1 %tobool243.not.i, label %lan_rd.exit547.i.do.end273.i_crit_edge, label %if.end245.i

lan_rd.exit547.i.do.end273.i_crit_edge:           ; preds = %lan_rd.exit547.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end273.i

if.end245.i:                                      ; preds = %lan_rd.exit547.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc246.i = add nuw nsw i32 %delay.1.i, 1
  %cmp247.i = icmp eq i32 %inc246.i, 2000
  br i1 %cmp247.i, label %do.end252.i, label %if.end245.i.while.cond220.i_crit_edge

if.end245.i.while.cond220.i_crit_edge:            ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond220.i

do.end252.i:                                      ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #6
  %96 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %chip_port.i, align 4
  %conv255.i = zext i8 %97 to i32
  %call256.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv255.i) #7
  br label %do.end273.i

do.end273.i:                                      ; preds = %do.end252.i, %lan_rd.exit547.i.do.end273.i_crit_edge
  %98 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %chip_port.i, align 4
  %conv276.i = zext i8 %99 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %99)
  %cmp.not.i.i549.i = icmp ult i8 %99, 8
  br i1 %cmp.not.i.i549.i, label %do.end273.i.if.end.i.i551.i_crit_edge, label %do.end.i.i550.i, !prof !21

do.end273.i.if.end.i.i551.i_crit_edge:            ; preds = %do.end273.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i551.i

do.end.i.i550.i:                                  ; preds = %do.end273.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i551.i

if.end.i.i551.i:                                  ; preds = %do.end.i.i550.i, %do.end273.i.if.end.i.i551.i_crit_edge
  %add.i.i553.i = add nuw nsw i32 %conv276.i, 13
  %arrayidx.i.i554.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i553.i
  %100 = ptrtoint ptr %arrayidx.i.i554.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i554.i, align 4
  %add.ptr.i.i555.i = getelementptr i8, ptr %101, i32 28
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i555.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i549.i, label %if.end.i.i551.i.lan_rmw.exit560.i_crit_edge, label %do.end.i2.i557.i, !prof !21

if.end.i.i551.i.lan_rmw.exit560.i_crit_edge:      ; preds = %if.end.i.i551.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit560.i

do.end.i2.i557.i:                                 ; preds = %if.end.i.i551.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit560.i

lan_rmw.exit560.i:                                ; preds = %do.end.i2.i557.i, %if.end.i.i551.i.lan_rmw.exit560.i_crit_edge
  %103 = and i32 %102, -16777217
  %104 = ptrtoint ptr %arrayidx.i.i554.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i.i554.i, align 4
  %add.ptr.i11.i559.i = getelementptr i8, ptr %105, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i559.i, i32 %103) #4, !srcloc !25
  %106 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %chip_port.i, align 4
  %conv294.i = zext i8 %107 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %107)
  %cmp.not.i.i562.i = icmp ult i8 %107, 8
  br i1 %cmp.not.i.i562.i, label %lan_rmw.exit560.i.if.end.i.i564.i_crit_edge, label %do.end.i.i563.i, !prof !21

lan_rmw.exit560.i.if.end.i.i564.i_crit_edge:      ; preds = %lan_rmw.exit560.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i564.i

do.end.i.i563.i:                                  ; preds = %lan_rmw.exit560.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i564.i

if.end.i.i564.i:                                  ; preds = %do.end.i.i563.i, %lan_rmw.exit560.i.if.end.i.i564.i_crit_edge
  %add.i.i566.i = add nuw nsw i32 %conv294.i, 13
  %arrayidx.i.i567.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i566.i
  %108 = ptrtoint ptr %arrayidx.i.i567.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i567.i, align 4
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i562.i, label %if.end.i.i564.i.lan_rmw.exit572.i_crit_edge, label %do.end.i2.i569.i, !prof !21

if.end.i.i564.i.lan_rmw.exit572.i_crit_edge:      ; preds = %if.end.i.i564.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit572.i

do.end.i2.i569.i:                                 ; preds = %if.end.i.i564.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit572.i

lan_rmw.exit572.i:                                ; preds = %do.end.i2.i569.i, %if.end.i.i564.i.lan_rmw.exit572.i_crit_edge
  %111 = or i32 %110, 134217728
  %112 = ptrtoint ptr %arrayidx.i.i567.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i567.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %111) #4, !srcloc !25
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %114 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %chip_port.i, align 4
  %conv346.i = zext i8 %115 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %115)
  %cmp.not.i.i574.i = icmp ult i8 %115, 8
  br i1 %cmp.not.i.i574.i, label %lan_rmw.exit572.i.if.end.i.i576.i_crit_edge, label %do.end.i.i575.i, !prof !21

lan_rmw.exit572.i.if.end.i.i576.i_crit_edge:      ; preds = %lan_rmw.exit572.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i576.i

do.end.i.i575.i:                                  ; preds = %lan_rmw.exit572.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i576.i

if.end.i.i576.i:                                  ; preds = %do.end.i.i575.i, %lan_rmw.exit572.i.if.end.i.i576.i_crit_edge
  %add.i.i578.i = add nuw nsw i32 %conv346.i, 13
  %arrayidx.i.i579.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i578.i
  %116 = ptrtoint ptr %arrayidx.i.i579.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i579.i, align 4
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i574.i, label %if.end.i.i576.i.lan_rmw.exit584.i_crit_edge, label %do.end.i2.i581.i, !prof !21

if.end.i.i576.i.lan_rmw.exit584.i_crit_edge:      ; preds = %if.end.i.i576.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit584.i

do.end.i2.i581.i:                                 ; preds = %if.end.i.i576.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit584.i

lan_rmw.exit584.i:                                ; preds = %do.end.i2.i581.i, %if.end.i.i576.i.lan_rmw.exit584.i_crit_edge
  %119 = or i32 %118, -939524096
  %120 = ptrtoint ptr %arrayidx.i.i579.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i579.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %119) #4, !srcloc !25
  %122 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %chip_port.i, align 4
  %conv364.i = zext i8 %123 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %123)
  %cmp51.not.i.i587.i = icmp ult i8 %123, 9
  br i1 %cmp51.not.i.i587.i, label %lan_rmw.exit584.i.lan_addr.exit.i595.i_crit_edge, label %do.end67.i.i589.i, !prof !21

lan_rmw.exit584.i.lan_addr.exit.i595.i_crit_edge: ; preds = %lan_rmw.exit584.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i595.i

do.end67.i.i589.i:                                ; preds = %lan_rmw.exit584.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i595.i

lan_addr.exit.i595.i:                             ; preds = %do.end67.i.i589.i, %lan_rmw.exit584.i.lan_addr.exit.i595.i_crit_edge
  %124 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i.i592.i = getelementptr i8, ptr %125, i32 28088
  %mul83.i.i593.i = shl nuw nsw i32 %conv364.i, 2
  %add.ptr84.i.i594.i = getelementptr i8, ptr %add.ptr82.i.i592.i, i32 %mul83.i.i593.i
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i594.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i587.i, label %lan_addr.exit.i595.i.lan966x_port_link_down.exit_crit_edge, label %do.end67.i8.i596.i, !prof !21

lan_addr.exit.i595.i.lan966x_port_link_down.exit_crit_edge: ; preds = %lan_addr.exit.i595.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_port_link_down.exit

do.end67.i8.i596.i:                               ; preds = %lan_addr.exit.i595.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan966x_port_link_down.exit

lan966x_port_link_down.exit:                      ; preds = %do.end67.i8.i596.i, %lan_addr.exit.i595.i.lan966x_port_link_down.exit_crit_edge
  %127 = and i32 %126, -50331649
  %128 = or i32 %127, 33554432
  %129 = ptrtoint ptr %arrayidx.i.i431.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx.i.i431.i, align 4
  %add.ptr82.i14.i600.i = getelementptr i8, ptr %130, i32 28088
  %add.ptr84.i16.i601.i = getelementptr i8, ptr %add.ptr82.i14.i600.i, i32 %mul83.i.i593.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i601.i, i32 %128) #4, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_port_config_up(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %config1.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9
  %lan966x2.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x2.i, align 4
  %speed3.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %speed3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed3.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog.i_crit_edge [
    i32 10, label %sw.bb.i
    i32 100, label %sw.bb4.i
    i32 1000, label %sw.bb5.i
    i32 2500, label %sw.bb18.i
  ]

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %sw.bb5.i, %sw.bb4.i, %sw.bb.i, %entry.sw.epilog.i_crit_edge
  %mode.0.i = phi i32 [ 0, %entry.sw.epilog.i_crit_edge ], [ 16, %sw.bb18.i ], [ 16, %sw.bb5.i ], [ 0, %sw.bb4.i ], [ 0, %sw.bb.i ]
  %speed.0.i = phi i32 [ 0, %entry.sw.epilog.i_crit_edge ], [ 1, %sw.bb18.i ], [ 1, %sw.bb5.i ], [ 2, %sw.bb4.i ], [ 3, %sw.bb.i ]
  %5 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %6)
  %cmp.i = icmp eq i32 %6, 18
  %spec.select.i = select i1 %cmp.i, i32 16, i32 %mode.0.i
  %duplex.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duplex.i, align 4
  %or.i = or i32 %spec.select.i, %8
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp.not.i.i.i = icmp ult i8 %10, 8
  br i1 %cmp.not.i.i.i, label %sw.epilog.i.lan_wr.exit.i_crit_edge, label %do.end.i.i.i, !prof !21

sw.epilog.i.lan_wr.exit.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit.i

do.end.i.i.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit.i

lan_wr.exit.i:                                    ; preds = %do.end.i.i.i, %sw.epilog.i.lan_wr.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %add.i.i.i = add nuw nsw i32 %conv.i, 13
  %arrayidx.i.i.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i.i, i32 %11) #4, !srcloc !25
  %14 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %duplex.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %speed3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %17)
  %cmp86.i = icmp eq i32 %17, 10
  %cond88.i = select i1 %cmp86.i, i32 2, i32 1
  %18 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_port.i, align 4
  %conv133.i = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp.not.i.i704.i = icmp ult i8 %19, 8
  br i1 %cmp.not.i.i704.i, label %lan_wr.exit.i.if.end.i.i.i_crit_edge, label %do.end.i.i705.i, !prof !21

lan_wr.exit.i.if.end.i.i.i_crit_edge:             ; preds = %lan_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i.i

do.end.i.i705.i:                                  ; preds = %lan_wr.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i705.i, %lan_wr.exit.i.if.end.i.i.i_crit_edge
  %add.i.i706.i = add nuw nsw i32 %conv133.i, 13
  %arrayidx.i.i707.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i706.i
  %20 = ptrtoint ptr %arrayidx.i.i707.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i707.i, align 4
  %add.ptr82.i.i709.i = getelementptr i8, ptr %21, i32 48
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i709.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i704.i, label %if.end.i.i.i.lan_rmw.exit.i_crit_edge, label %do.end.i2.i.i, !prof !21

if.end.i.i.i.lan_rmw.exit.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit.i

do.end.i2.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit.i

lan_rmw.exit.i:                                   ; preds = %do.end.i2.i.i, %if.end.i.i.i.lan_rmw.exit.i_crit_edge
  %23 = and i32 %22, 14745599
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #4
  %or114.i = select i1 %tobool.not.i, i32 1312, i32 1568
  %or131.i = or i32 %cond88.i, %or114.i
  %or.i.i = or i32 %or131.i, %24
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #4
  %26 = ptrtoint ptr %arrayidx.i.i707.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i707.i, align 4
  %add.ptr82.i14.i.i = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i.i, i32 %25) #4, !srcloc !25
  %28 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_port.i, align 4
  %conv168.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.not.i.i711.i = icmp ult i8 %29, 8
  br i1 %cmp.not.i.i711.i, label %lan_rmw.exit.i.if.end.i.i713.i_crit_edge, label %do.end.i.i712.i, !prof !21

lan_rmw.exit.i.if.end.i.i713.i_crit_edge:         ; preds = %lan_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i713.i

do.end.i.i712.i:                                  ; preds = %lan_rmw.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i713.i

if.end.i.i713.i:                                  ; preds = %do.end.i.i712.i, %lan_rmw.exit.i.if.end.i.i713.i_crit_edge
  %add.i.i714.i = add nuw nsw i32 %conv168.i, 13
  %arrayidx.i.i715.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i714.i
  %30 = ptrtoint ptr %arrayidx.i.i715.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i715.i, align 4
  %add.ptr82.i.i717.i = getelementptr i8, ptr %31, i32 52
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i717.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i711.i, label %if.end.i.i713.i.lan_rmw.exit723.i_crit_edge, label %do.end.i2.i718.i, !prof !21

if.end.i.i713.i.lan_rmw.exit723.i_crit_edge:      ; preds = %if.end.i.i713.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit723.i

do.end.i2.i718.i:                                 ; preds = %if.end.i.i713.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit723.i

lan_rmw.exit723.i:                                ; preds = %do.end.i2.i718.i, %if.end.i.i713.i.lan_rmw.exit723.i_crit_edge
  %33 = and i32 %32, -1113857
  %34 = or i32 %33, 1049600
  %35 = ptrtoint ptr %arrayidx.i.i715.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i715.i, align 4
  %add.ptr82.i14.i722.i = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i722.i, i32 %34) #4, !srcloc !25
  %37 = ptrtoint ptr %config1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %config1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp170.i = icmp eq i32 %38, 3
  br i1 %cmp170.i, label %if.then172.i, label %lan_rmw.exit723.i.do.body221.i_crit_edge

lan_rmw.exit723.i.do.body221.i_crit_edge:         ; preds = %lan_rmw.exit723.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body221.i

if.then172.i:                                     ; preds = %lan_rmw.exit723.i
  %39 = ptrtoint ptr %speed3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %speed3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %40)
  %cmp174.i = icmp eq i32 %40, 1000
  %41 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %chip_port.i, align 4
  %conv194.i = zext i8 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp51.not.i.i.i = icmp ult i8 %42, 2
  br i1 %cmp174.i, label %do.end191.i, label %do.end209.i

do.end191.i:                                      ; preds = %if.then172.i
  br i1 %cmp51.not.i.i.i, label %do.end191.i.lan_addr.exit.i.i_crit_edge, label %do.end67.i.i.i, !prof !21

do.end191.i.lan_addr.exit.i.i_crit_edge:          ; preds = %do.end191.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i.i

do.end67.i.i.i:                                   ; preds = %do.end191.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i.i

lan_addr.exit.i.i:                                ; preds = %do.end67.i.i.i, %do.end191.i.lan_addr.exit.i.i_crit_edge
  %arrayidx.i.i726.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 5
  %43 = ptrtoint ptr %arrayidx.i.i726.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i726.i, align 4
  %add.ptr82.i.i728.i = getelementptr i8, ptr %44, i32 24
  %mul83.i.i.i = shl nuw nsw i32 %conv194.i, 2
  %add.ptr84.i.i.i = getelementptr i8, ptr %add.ptr82.i.i728.i, i32 %mul83.i.i.i
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i.i, label %lan_addr.exit.i.i.lan_rmw.exit733.i_crit_edge, label %do.end67.i8.i.i, !prof !21

lan_addr.exit.i.i.lan_rmw.exit733.i_crit_edge:    ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit733.i

do.end67.i8.i.i:                                  ; preds = %lan_addr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit733.i

lan_rmw.exit733.i:                                ; preds = %do.end67.i8.i.i, %lan_addr.exit.i.i.lan_rmw.exit733.i_crit_edge
  %46 = or i32 %45, 16777216
  %47 = ptrtoint ptr %arrayidx.i.i726.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i.i726.i, align 4
  %add.ptr82.i14.i732.i = getelementptr i8, ptr %48, i32 24
  %add.ptr84.i16.i.i = getelementptr i8, ptr %add.ptr82.i14.i732.i, i32 %mul83.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i.i, i32 %46) #4, !srcloc !25
  br label %do.body221.i

do.end209.i:                                      ; preds = %if.then172.i
  br i1 %cmp51.not.i.i.i, label %do.end209.i.lan_addr.exit.i743.i_crit_edge, label %do.end67.i.i737.i, !prof !21

do.end209.i.lan_addr.exit.i743.i_crit_edge:       ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i743.i

do.end67.i.i737.i:                                ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i743.i

lan_addr.exit.i743.i:                             ; preds = %do.end67.i.i737.i, %do.end209.i.lan_addr.exit.i743.i_crit_edge
  %arrayidx.i.i738.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 5
  %49 = ptrtoint ptr %arrayidx.i.i738.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i738.i, align 4
  %add.ptr82.i.i740.i = getelementptr i8, ptr %50, i32 24
  %mul83.i.i741.i = shl nuw nsw i32 %conv194.i, 2
  %add.ptr84.i.i742.i = getelementptr i8, ptr %add.ptr82.i.i740.i, i32 %mul83.i.i741.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i742.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i.i, label %lan_addr.exit.i743.i.lan_rmw.exit749.i_crit_edge, label %do.end67.i8.i744.i, !prof !21

lan_addr.exit.i743.i.lan_rmw.exit749.i_crit_edge: ; preds = %lan_addr.exit.i743.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit749.i

do.end67.i8.i744.i:                               ; preds = %lan_addr.exit.i743.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit749.i

lan_rmw.exit749.i:                                ; preds = %do.end67.i8.i744.i, %lan_addr.exit.i743.i.lan_rmw.exit749.i_crit_edge
  %52 = and i32 %51, -16777217
  %53 = ptrtoint ptr %arrayidx.i.i738.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i738.i, align 4
  %add.ptr82.i14.i747.i = getelementptr i8, ptr %54, i32 24
  %add.ptr84.i16.i748.i = getelementptr i8, ptr %add.ptr82.i14.i747.i, i32 %mul83.i.i741.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i748.i, i32 %52) #4, !srcloc !25
  br label %do.body221.i

do.body221.i:                                     ; preds = %lan_rmw.exit749.i, %lan_rmw.exit733.i, %lan_rmw.exit723.i.do.body221.i_crit_edge
  %55 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %chip_port.i, align 4
  %conv240.i = zext i8 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %56)
  %cmp20.not.i.i.i = icmp ult i8 %56, 8
  br i1 %cmp20.not.i.i.i, label %do.body221.i.lan_wr.exit755.i_crit_edge, label %do.end36.i.i.i, !prof !21

do.body221.i.lan_wr.exit755.i_crit_edge:          ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit755.i

do.end36.i.i.i:                                   ; preds = %do.body221.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit755.i

lan_wr.exit755.i:                                 ; preds = %do.end36.i.i.i, %do.body221.i.lan_wr.exit755.i_crit_edge
  %57 = shl nuw nsw i32 %speed.0.i, 24
  %arrayidx.i.i752.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %arrayidx.i.i752.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i.i752.i, align 4
  %add.ptr.i.i753.i = getelementptr i8, ptr %59, i32 30720
  %mul.i.i.i = shl nuw nsw i32 %conv240.i, 6
  %add.ptr81.i.i.i = getelementptr i8, ptr %add.ptr.i.i753.i, i32 %mul.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i.i, i32 %57) #4, !srcloc !25
  %60 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %chip_port.i, align 4
  %conv258.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %61)
  %cmp.not.i.i757.i = icmp ult i8 %61, 8
  br i1 %cmp.not.i.i757.i, label %lan_wr.exit755.i.if.end.i.i759.i_crit_edge, label %do.end.i.i758.i, !prof !21

lan_wr.exit755.i.if.end.i.i759.i_crit_edge:       ; preds = %lan_wr.exit755.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i759.i

do.end.i.i758.i:                                  ; preds = %lan_wr.exit755.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i759.i

if.end.i.i759.i:                                  ; preds = %do.end.i.i758.i, %lan_wr.exit755.i.if.end.i.i759.i_crit_edge
  %add.i.i760.i = add nuw nsw i32 %conv258.i, 13
  %arrayidx.i.i761.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i760.i
  %62 = ptrtoint ptr %arrayidx.i.i761.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i.i761.i, align 4
  %add.ptr.i.i762.i = getelementptr i8, ptr %63, i32 72
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i762.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i757.i, label %if.end.i.i759.i.lan_rmw.exit768.i_crit_edge, label %do.end.i2.i764.i, !prof !21

if.end.i.i759.i.lan_rmw.exit768.i_crit_edge:      ; preds = %if.end.i.i759.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit768.i

do.end.i2.i764.i:                                 ; preds = %if.end.i.i759.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit768.i

lan_rmw.exit768.i:                                ; preds = %do.end.i2.i764.i, %if.end.i.i759.i.lan_rmw.exit768.i_crit_edge
  %65 = or i32 %64, 16777216
  %66 = ptrtoint ptr %arrayidx.i.i761.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i761.i, align 4
  %add.ptr.i11.i767.i = getelementptr i8, ptr %67, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i767.i, i32 %65) #4, !srcloc !25
  %68 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %chip_port.i, align 4
  %conv276.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %69)
  %cmp.not.i.i770.i = icmp ult i8 %69, 8
  br i1 %cmp.not.i.i770.i, label %lan_rmw.exit768.i.if.end.i.i772.i_crit_edge, label %do.end.i.i771.i, !prof !21

lan_rmw.exit768.i.if.end.i.i772.i_crit_edge:      ; preds = %lan_rmw.exit768.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i772.i

do.end.i.i771.i:                                  ; preds = %lan_rmw.exit768.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i772.i

if.end.i.i772.i:                                  ; preds = %do.end.i.i771.i, %lan_rmw.exit768.i.if.end.i.i772.i_crit_edge
  %add.i.i773.i = add nuw nsw i32 %conv276.i, 13
  %arrayidx.i.i774.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i773.i
  %70 = ptrtoint ptr %arrayidx.i.i774.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i774.i, align 4
  %add.ptr82.i.i776.i = getelementptr i8, ptr %71, i32 80
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i776.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i770.i, label %if.end.i.i772.i.lan_rmw.exit782.i_crit_edge, label %do.end.i2.i778.i, !prof !21

if.end.i.i772.i.lan_rmw.exit782.i_crit_edge:      ; preds = %if.end.i.i772.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit782.i

do.end.i2.i778.i:                                 ; preds = %if.end.i.i772.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit782.i

lan_rmw.exit782.i:                                ; preds = %do.end.i2.i778.i, %if.end.i.i772.i.lan_rmw.exit782.i_crit_edge
  %73 = and i32 %72, -16777217
  %74 = ptrtoint ptr %arrayidx.i.i774.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i.i774.i, align 4
  %add.ptr82.i14.i781.i = getelementptr i8, ptr %75, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i781.i, i32 %73) #4, !srcloc !25
  %76 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %chip_port.i, align 4
  %conv333.i = zext i8 %77 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %77)
  %cmp51.not.i.i784.i = icmp ult i8 %77, 9
  br i1 %cmp51.not.i.i784.i, label %lan_rmw.exit782.i.lan_wr.exit792.i_crit_edge, label %do.end67.i.i785.i, !prof !21

lan_rmw.exit782.i.lan_wr.exit792.i_crit_edge:     ; preds = %lan_rmw.exit782.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit792.i

do.end67.i.i785.i:                                ; preds = %lan_rmw.exit782.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit792.i

lan_wr.exit792.i:                                 ; preds = %do.end67.i.i785.i, %lan_rmw.exit782.i.lan_wr.exit792.i_crit_edge
  %arrayidx.i.i787.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 52
  %78 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx.i.i787.i, align 4
  %add.ptr.i.i788.i = getelementptr i8, ptr %79, i32 4296
  %mul83.i.i789.i = shl nuw nsw i32 %conv333.i, 2
  %add.ptr84.i.i790.i = getelementptr i8, ptr %add.ptr.i.i788.i, i32 %mul83.i.i789.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i790.i, i32 -1120402944) #4, !srcloc !25
  %80 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %chip_port.i, align 4
  %conv335.i = zext i8 %81 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %81)
  %cmp.not.i.i793.i = icmp ult i8 %81, 8
  br i1 %cmp.not.i.i793.i, label %lan_wr.exit792.i.lan_wr.exit802.i_crit_edge, label %do.end.i.i794.i, !prof !21

lan_wr.exit792.i.lan_wr.exit802.i_crit_edge:      ; preds = %lan_wr.exit792.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit802.i

do.end.i.i794.i:                                  ; preds = %lan_wr.exit792.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit802.i

lan_wr.exit802.i:                                 ; preds = %do.end.i.i794.i, %lan_wr.exit792.i.lan_wr.exit802.i_crit_edge
  %add.i.i797.i = add nuw nsw i32 %conv335.i, 13
  %arrayidx.i.i798.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i797.i
  %82 = ptrtoint ptr %arrayidx.i.i798.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.i.i798.i, align 4
  %add.ptr82.i.i800.i = getelementptr i8, ptr %83, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i800.i, i32 0) #4, !srcloc !25
  %84 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %chip_port.i, align 4
  %conv337.i = zext i8 %85 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %85)
  %cmp.not.i.i803.i = icmp ult i8 %85, 8
  br i1 %cmp.not.i.i803.i, label %lan_wr.exit802.i.lan_wr.exit812.i_crit_edge, label %do.end.i.i804.i, !prof !21

lan_wr.exit802.i.lan_wr.exit812.i_crit_edge:      ; preds = %lan_wr.exit802.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit812.i

do.end.i.i804.i:                                  ; preds = %lan_wr.exit802.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit812.i

lan_wr.exit812.i:                                 ; preds = %do.end.i.i804.i, %lan_wr.exit802.i.lan_wr.exit812.i_crit_edge
  %add.i.i807.i = add nuw nsw i32 %conv337.i, 13
  %arrayidx.i.i808.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i807.i
  %86 = ptrtoint ptr %arrayidx.i.i808.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i808.i, align 4
  %add.ptr82.i.i810.i = getelementptr i8, ptr %87, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i810.i, i32 0) #4, !srcloc !25
  %shl360.i = shl nuw nsw i32 %speed.0.i, 26
  %pause.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9, i32 4
  %88 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pause.i, align 4
  %and443.i = shl i32 %89, 16
  %shl446.i = and i32 %and443.i, 65536
  %or412.i = or i32 %shl446.i, %shl360.i
  %shl483.i = and i32 %and443.i, 131072
  %or448.i = or i32 %or412.i, %shl483.i
  %90 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %chip_port.i, align 4
  %conv487.i = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %91)
  %cmp51.not.i.i815.i = icmp ult i8 %91, 8
  br i1 %cmp51.not.i.i815.i, label %lan_wr.exit812.i.lan_addr.exit.i822.i_crit_edge, label %do.end67.i.i816.i, !prof !21

lan_wr.exit812.i.lan_addr.exit.i822.i_crit_edge:  ; preds = %lan_wr.exit812.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_addr.exit.i822.i

do.end67.i.i816.i:                                ; preds = %lan_wr.exit812.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_addr.exit.i822.i

lan_addr.exit.i822.i:                             ; preds = %do.end67.i.i816.i, %lan_wr.exit812.i.lan_addr.exit.i822.i_crit_edge
  %92 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i787.i, align 4
  %add.ptr82.i.i819.i = getelementptr i8, ptr %93, i32 4376
  %mul83.i.i820.i = shl nuw nsw i32 %conv487.i, 2
  %add.ptr84.i.i821.i = getelementptr i8, ptr %add.ptr82.i.i819.i, i32 %mul83.i.i820.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84.i.i821.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp51.not.i.i815.i, label %lan_addr.exit.i822.i.lan_rmw.exit829.i_crit_edge, label %do.end67.i8.i823.i, !prof !21

lan_addr.exit.i822.i.lan_rmw.exit829.i_crit_edge: ; preds = %lan_addr.exit.i822.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit829.i

do.end67.i8.i823.i:                               ; preds = %lan_addr.exit.i822.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit829.i

lan_rmw.exit829.i:                                ; preds = %do.end67.i8.i823.i, %lan_addr.exit.i822.i.lan_rmw.exit829.i_crit_edge
  %95 = and i32 %94, 2288
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #4
  %and3.i.i = or i32 %or448.i, 7667711
  %or.i825.i = or i32 %96, %and3.i.i
  %97 = tail call i32 @llvm.bswap.i32(i32 %or.i825.i) #4
  %98 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i787.i, align 4
  %add.ptr82.i14.i827.i = getelementptr i8, ptr %99, i32 4376
  %add.ptr84.i16.i828.i = getelementptr i8, ptr %add.ptr82.i14.i827.i, i32 %mul83.i.i820.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i16.i828.i, i32 %97) #4, !srcloc !25
  %shared_queue_sz.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 4
  %100 = ptrtoint ptr %shared_queue_sz.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %shared_queue_sz.i, align 4
  %num_phys_ports.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 1
  %102 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %num_phys_ports.i, align 4
  %conv488.i = zext i8 %103 to i32
  %div.i = sdiv i32 %101, %conv488.i
  %add.i = add i32 %div.i, 1
  %div10.i.i = lshr i32 %add.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %add.i)
  %cmp.i.i = icmp ugt i32 %add.i, 16383
  %div111.i.i = lshr i32 %add.i, 10
  %104 = tail call i32 @llvm.umin.i32(i32 %div111.i.i, i32 255) #4
  %or.i830.i = or i32 %104, 256
  %value.addr.0.i.i = select i1 %cmp.i.i, i32 %or.i830.i, i32 %div10.i.i
  %105 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %chip_port.i, align 4
  %conv491.i = zext i8 %106 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %106)
  %cmp51.not.i.i832.i = icmp ult i8 %106, 9
  br i1 %cmp51.not.i.i832.i, label %lan_rmw.exit829.i.lan_wr.exit841.i_crit_edge, label %do.end67.i.i833.i, !prof !21

lan_rmw.exit829.i.lan_wr.exit841.i_crit_edge:     ; preds = %lan_rmw.exit829.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit841.i

do.end67.i.i833.i:                                ; preds = %lan_rmw.exit829.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit841.i

lan_wr.exit841.i:                                 ; preds = %do.end67.i.i833.i, %lan_rmw.exit829.i.lan_wr.exit841.i_crit_edge
  %107 = tail call i32 @llvm.bswap.i32(i32 %value.addr.0.i.i) #4
  %108 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i787.i, align 4
  %add.ptr82.i.i837.i = getelementptr i8, ptr %109, i32 4336
  %mul83.i.i838.i = shl nuw nsw i32 %conv491.i, 2
  %add.ptr84.i.i839.i = getelementptr i8, ptr %add.ptr82.i.i837.i, i32 %mul83.i.i838.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i839.i, i32 %107) #4, !srcloc !25
  %div10.i842.i = lshr i32 %101, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %101)
  %cmp.i843.i = icmp ugt i32 %101, 16383
  %div111.i844.i = lshr i32 %101, 10
  %110 = tail call i32 @llvm.umin.i32(i32 %div111.i844.i, i32 255) #4
  %or.i845.i = or i32 %110, 256
  %value.addr.0.i846.i = select i1 %cmp.i843.i, i32 %or.i845.i, i32 %div10.i842.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  %111 = tail call i32 @llvm.bswap.i32(i32 %value.addr.0.i846.i) #4
  %112 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx.i.i787.i, align 4
  %add.ptr82.i.i851.i = getelementptr i8, ptr %113, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i851.i, i32 %111) #4, !srcloc !25
  %114 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %chip_port.i, align 4
  %conv527.i = zext i8 %115 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %115)
  %cmp.not.i.i853.i = icmp ult i8 %115, 8
  br i1 %cmp.not.i.i853.i, label %lan_wr.exit841.i.lan_wr.exit861.i_crit_edge, label %do.end.i.i854.i, !prof !21

lan_wr.exit841.i.lan_wr.exit861.i_crit_edge:      ; preds = %lan_wr.exit841.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit861.i

do.end.i.i854.i:                                  ; preds = %lan_wr.exit841.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit861.i

lan_wr.exit861.i:                                 ; preds = %do.end.i.i854.i, %lan_wr.exit841.i.lan_wr.exit861.i_crit_edge
  %add.i.i857.i = add nuw nsw i32 %conv527.i, 13
  %arrayidx.i.i858.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i857.i
  %116 = ptrtoint ptr %arrayidx.i.i858.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i.i858.i, align 4
  %add.ptr.i.i859.i = getelementptr i8, ptr %117, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i859.i, i32 285212672) #4, !srcloc !25
  %118 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %chip_port.i, align 4
  %conv553.i = zext i8 %119 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %119)
  %cmp.not.i.i862.i = icmp ult i8 %119, 8
  br i1 %cmp.not.i.i862.i, label %lan_wr.exit861.i.lan_wr.exit869.i_crit_edge, label %do.end.i.i863.i, !prof !21

lan_wr.exit861.i.lan_wr.exit869.i_crit_edge:      ; preds = %lan_wr.exit861.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit869.i

do.end.i.i863.i:                                  ; preds = %lan_wr.exit861.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit869.i

lan_wr.exit869.i:                                 ; preds = %do.end.i.i863.i, %lan_wr.exit861.i.lan_wr.exit869.i_crit_edge
  %add.i.i866.i = add nuw nsw i32 %conv553.i, 13
  %arrayidx.i.i867.i = getelementptr ptr, ptr %regs.i.i, i32 %add.i.i866.i
  %120 = ptrtoint ptr %arrayidx.i.i867.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i867.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %57) #4, !srcloc !25
  %122 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %chip_port.i, align 4
  %conv605.i = zext i8 %123 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %123)
  %cmp51.not.i.i871.i = icmp ult i8 %123, 9
  br i1 %cmp51.not.i.i871.i, label %lan_wr.exit869.i.lan_wr.exit880.i_crit_edge, label %do.end67.i.i872.i, !prof !21

lan_wr.exit869.i.lan_wr.exit880.i_crit_edge:      ; preds = %lan_wr.exit869.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit880.i

do.end67.i.i872.i:                                ; preds = %lan_wr.exit869.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 240, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit880.i

lan_wr.exit880.i:                                 ; preds = %do.end67.i.i872.i, %lan_wr.exit869.i.lan_wr.exit880.i_crit_edge
  %arrayidx.i.i874.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 46
  %124 = ptrtoint ptr %arrayidx.i.i874.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i.i874.i, align 4
  %add.ptr82.i.i876.i = getelementptr i8, ptr %125, i32 28088
  %mul83.i.i877.i = shl nuw nsw i32 %conv605.i, 2
  %add.ptr84.i.i878.i = getelementptr i8, ptr %add.ptr82.i.i876.i, i32 %mul83.i.i877.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr84.i.i878.i, i32 5243904) #4, !srcloc !25
  %126 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %chip_port.i, align 4
  %conv640.i = zext i8 %127 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %127)
  %cmp20.not.i.i882.i = icmp ult i8 %127, 10
  br i1 %cmp20.not.i.i882.i, label %lan_wr.exit880.i.if.end42.i.i.i_crit_edge, label %do.end36.i.i884.i, !prof !21

lan_wr.exit880.i.if.end42.i.i.i_crit_edge:        ; preds = %lan_wr.exit880.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i.i

do.end36.i.i884.i:                                ; preds = %lan_wr.exit880.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %if.end42.i.i.i

if.end42.i.i.i:                                   ; preds = %do.end36.i.i884.i, %lan_wr.exit880.i.if.end42.i.i.i_crit_edge
  %arrayidx.i.i885.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 2
  %128 = ptrtoint ptr %arrayidx.i.i885.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %arrayidx.i.i885.i, align 4
  %add.ptr.i.i886.i = getelementptr i8, ptr %129, i32 98816
  %mul.i.i887.i = shl nuw nsw i32 %conv640.i, 3
  %add.ptr81.i.i888.i = getelementptr i8, ptr %add.ptr.i.i886.i, i32 %mul.i.i887.i
  %add.ptr82.i.i889.i = getelementptr i8, ptr %add.ptr81.i.i888.i, i32 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i889.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp20.not.i.i882.i, label %if.end42.i.i.i.lan966x_port_link_up.exit_crit_edge, label %do.end36.i5.i.i, !prof !21

if.end42.i.i.i.lan966x_port_link_up.exit_crit_edge: ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan966x_port_link_up.exit

do.end36.i5.i.i:                                  ; preds = %if.end42.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %lan966x_port_link_up.exit

lan966x_port_link_up.exit:                        ; preds = %do.end36.i5.i.i, %if.end42.i.i.i.lan966x_port_link_up.exit_crit_edge
  %131 = and i32 %130, 16580351
  %132 = or i32 %131, 268435456
  %133 = ptrtoint ptr %arrayidx.i.i885.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %arrayidx.i.i885.i, align 4
  %add.ptr.i11.i893.i = getelementptr i8, ptr %134, i32 98816
  %add.ptr81.i13.i.i = getelementptr i8, ptr %add.ptr.i11.i893.i, i32 %mul.i.i887.i
  %add.ptr82.i14.i894.i = getelementptr i8, ptr %add.ptr81.i13.i.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i894.i, i32 %132) #4, !srcloc !25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_port_status_get(ptr nocapture noundef readonly %port, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %chip_port = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp.not.i.i = icmp ult i8 %3, 8
  br i1 %cmp.not.i.i, label %entry.lan_rd.exit_crit_edge, label %do.end.i.i, !prof !21

entry.lan_rd.exit_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rd.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rd.exit

lan_rd.exit:                                      ; preds = %do.end.i.i, %entry.lan_rd.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  %add.i.i = add nuw nsw i32 %conv, 13
  %arrayidx.i.i = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %5, i32 120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #4, !srcloc !22
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %8 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lan_rd.exit.if.end_crit_edge, label %if.then

lan_rd.exit.if.end_crit_edge:                     ; preds = %lan_rd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %lan_rd.exit
  %9 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_port, align 4
  %conv16 = zext i8 %10 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp.not.i.i171 = icmp ult i8 %10, 8
  br i1 %cmp.not.i.i171, label %if.then.lan_wr.exit_crit_edge, label %do.end.i.i172, !prof !21

if.then.lan_wr.exit_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit

do.end.i.i172:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end.i.i172, %if.then.lan_wr.exit_crit_edge
  %add.i.i174 = add nuw nsw i32 %conv16, 13
  %arrayidx.i.i175 = getelementptr ptr, ptr %regs.i, i32 %add.i.i174
  %11 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i175, align 4
  %add.ptr82.i.i177 = getelementptr i8, ptr %12, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i177, i32 %6) #4, !srcloc !25
  br label %if.end

if.end:                                           ; preds = %lan_wr.exit, %lan_rd.exit.if.end_crit_edge
  %13 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_port, align 4
  %conv18 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %14)
  %cmp.not.i.i178 = icmp ult i8 %14, 8
  br i1 %cmp.not.i.i178, label %if.end.lan_rd.exit185_crit_edge, label %do.end.i.i179, !prof !21

if.end.lan_rd.exit185_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rd.exit185

do.end.i.i179:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rd.exit185

lan_rd.exit185:                                   ; preds = %do.end.i.i179, %if.end.lan_rd.exit185_crit_edge
  %add.i.i181 = add nuw nsw i32 %conv18, 13
  %arrayidx.i.i182 = getelementptr ptr, ptr %regs.i, i32 %add.i.i181
  %15 = ptrtoint ptr %arrayidx.i.i182 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.i182, align 4
  %add.ptr82.i.i184 = getelementptr i8, ptr %16, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i184) #4, !srcloc !22
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool38.not = icmp eq i32 %19, 0
  %20 = trunc i32 %18 to i8
  %21 = shl i8 %20, 7
  %22 = select i1 %tobool38.not, i8 0, i8 %21
  %link = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 6
  %23 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load = load i8, ptr %link, align 4
  %bf.clear = and i8 %bf.load, 127
  %24 = trunc i32 %8 to i8
  %25 = lshr exact i8 %24, 4
  %26 = xor i8 %25, -1
  %27 = shl i8 %26, 7
  %bf.lshr170 = and i8 %22, %27
  %bf.set66 = or i8 %bf.lshr170, %bf.clear
  store i8 %bf.set66, ptr %link, align 4
  %28 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_port, align 4
  %conv69 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.not.i.i186 = icmp ult i8 %29, 8
  br i1 %cmp.not.i.i186, label %lan_rd.exit185.lan_rd.exit193_crit_edge, label %do.end.i.i187, !prof !21

lan_rd.exit185.lan_rd.exit193_crit_edge:          ; preds = %lan_rd.exit185
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rd.exit193

do.end.i.i187:                                    ; preds = %lan_rd.exit185
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rd.exit193

lan_rd.exit193:                                   ; preds = %do.end.i.i187, %lan_rd.exit185.lan_rd.exit193_crit_edge
  %add.i.i189 = add nuw nsw i32 %conv69, 13
  %arrayidx.i.i190 = getelementptr ptr, ptr %regs.i, i32 %add.i.i189
  %30 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i.i190, align 4
  %add.ptr82.i.i192 = getelementptr i8, ptr %31, i32 104
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i192) #4, !srcloc !22
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %and87 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool89.not = icmp eq i32 %and87, 0
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load124 = load i8, ptr %link, align 4
  br i1 %tobool89.not, label %if.else, label %if.then90

if.then90:                                        ; preds = %lan_rd.exit193
  call void @__sanitizer_cov_trace_pc() #6
  %bf.set93 = or i8 %bf.load124, 32
  %35 = ptrtoint ptr %link to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %bf.set93, ptr %link, align 4
  %36 = lshr i8 %bf.load124, 5
  %37 = and i8 %36, 4
  %38 = or i8 %37, 32
  %conv103 = zext i8 %38 to i16
  %shr121 = lshr i32 %33, 16
  %conv122 = trunc i32 %shr121 to i16
  tail call void @phylink_mii_c22_pcs_decode_state(ptr noundef %state, i16 noundef zeroext %conv103, i16 noundef zeroext %conv122) #4
  br label %cleanup

if.else:                                          ; preds = %lan_rd.exit193
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load124)
  %tobool127.not = icmp sgt i8 %bf.load124, -1
  br i1 %tobool127.not, label %if.else.cleanup_crit_edge, label %if.end129

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end129:                                        ; preds = %if.else
  %interface = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 2
  %39 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %interface, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %40, label %if.end129.if.end139_crit_edge [
    i32 21, label %if.end129.if.end139.sink.split_crit_edge
    i32 22, label %if.then136
  ]

if.end129.if.end139.sink.split_crit_edge:         ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139.sink.split

if.end129.if.end139_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139

if.then136:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end139.sink.split

if.end139.sink.split:                             ; preds = %if.then136, %if.end129.if.end139.sink.split_crit_edge
  %.sink = phi i32 [ 2500, %if.then136 ], [ 1000, %if.end129.if.end139.sink.split_crit_edge ]
  %speed137 = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 3
  %42 = ptrtoint ptr %speed137 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %speed137, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.end139.sink.split, %if.end129.if.end139_crit_edge
  %duplex = getelementptr inbounds %struct.phylink_link_state, ptr %state, i32 0, i32 4
  %43 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %duplex, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.else.cleanup_crit_edge, %if.then90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phylink_mii_c22_pcs_decode_state(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_port_pcs_set(ptr nocapture noundef %port, ptr nocapture noundef readonly %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %inband = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 5
  %2 = ptrtoint ptr %inband to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %inband, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body15_crit_edge, label %if.then

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %5, label %if.end9.fold.split [
    i32 4, label %if.then.do.body15_crit_edge
    i32 18, label %if.then.do.body15_crit_edge248
    i32 21, label %land.lhs.true
  ]

if.then.do.body15_crit_edge248:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

if.then.do.body15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %autoneg = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 6
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 1, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp ne i8 %8, 0
  br label %do.body15

if.end9.fold.split:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body15

do.body15:                                        ; preds = %if.end9.fold.split, %land.lhs.true, %if.then.do.body15_crit_edge, %if.then.do.body15_crit_edge248, %entry.do.body15_crit_edge
  %inband_aneg.1.off0 = phi i1 [ true, %if.then.do.body15_crit_edge ], [ true, %if.then.do.body15_crit_edge248 ], [ false, %if.end9.fold.split ], [ %tobool7.not, %land.lhs.true ], [ false, %entry.do.body15_crit_edge ]
  %chip_port = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %chip_port, align 4
  %conv32 = zext i8 %10 to i32
  %regs.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp.not.i.i = icmp ult i8 %10, 8
  br i1 %cmp.not.i.i, label %do.body15.if.end.i.i_crit_edge, label %do.end.i.i, !prof !21

do.body15.if.end.i.i_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %do.body15.if.end.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %conv32, 13
  %arrayidx.i.i = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %12, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i, label %if.end.i.i.lan_rmw.exit_crit_edge, label %do.end.i2.i, !prof !21

if.end.i.i.lan_rmw.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit

do.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit

lan_rmw.exit:                                     ; preds = %do.end.i2.i, %if.end.i.i.lan_rmw.exit_crit_edge
  %14 = and i32 %13, -16777217
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = xor i8 %3, 1
  %and3.i = zext i8 %16 to i32
  %or.i = or i32 %15, %and3.i
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i14.i = getelementptr i8, ptr %19, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i, i32 %17) #4, !srcloc !25
  %20 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_port, align 4
  %conv50 = zext i8 %21 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %21)
  %cmp.not.i.i213 = icmp ult i8 %21, 8
  br i1 %cmp.not.i.i213, label %lan_rmw.exit.lan_wr.exit_crit_edge, label %do.end.i.i214, !prof !21

lan_rmw.exit.lan_wr.exit_crit_edge:               ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit

do.end.i.i214:                                    ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end.i.i214, %lan_rmw.exit.lan_wr.exit_crit_edge
  %add.i.i217 = add nuw nsw i32 %conv50, 13
  %arrayidx.i.i218 = getelementptr ptr, ptr %regs.i, i32 %add.i.i217
  %22 = ptrtoint ptr %arrayidx.i.i218 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i218, align 4
  %add.ptr.i.i219 = getelementptr i8, ptr %23, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i219, i32 16777216) #4, !srcloc !25
  br i1 %inband_aneg.1.off0, label %if.then52, label %if.else134

if.then52:                                        ; preds = %lan_wr.exit
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config, align 4
  %advertising = getelementptr inbounds %struct.lan966x_port_config, ptr %config, i32 0, i32 1
  %26 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %advertising, align 4
  %call = tail call i32 @phylink_mii_c22_pcs_encode_advertisement(i32 noundef %25, ptr noundef %27) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp54 = icmp sgt i32 %call, -1
  br i1 %cmp54, label %do.end77, label %if.then52.do.end152_crit_edge

if.then52.do.end152_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end152

do.end77:                                         ; preds = %if.then52
  %shl79 = shl i32 %call, 16
  %or130 = or i32 %shl79, 259
  %28 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_port, align 4
  %conv132 = zext i8 %29 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %29)
  %cmp.not.i.i220 = icmp ult i8 %29, 8
  br i1 %cmp.not.i.i220, label %do.end77.lan_wr.exit228_crit_edge, label %do.end.i.i221, !prof !21

do.end77.lan_wr.exit228_crit_edge:                ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit228

do.end.i.i221:                                    ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit228

lan_wr.exit228:                                   ; preds = %do.end.i.i221, %do.end77.lan_wr.exit228_crit_edge
  %30 = tail call i32 @llvm.bswap.i32(i32 %or130) #4
  %add.i.i224 = add nuw nsw i32 %conv132, 13
  %arrayidx.i.i225 = getelementptr ptr, ptr %regs.i, i32 %add.i.i224
  %31 = ptrtoint ptr %arrayidx.i.i225 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i225, align 4
  %add.ptr82.i.i227 = getelementptr i8, ptr %32, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i227, i32 %30) #4, !srcloc !25
  br label %do.end152

if.else134:                                       ; preds = %lan_wr.exit
  %33 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %chip_port, align 4
  %conv136 = zext i8 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %34)
  %cmp.not.i.i229 = icmp ult i8 %34, 8
  br i1 %cmp.not.i.i229, label %if.else134.lan_wr.exit237_crit_edge, label %do.end.i.i230, !prof !21

if.else134.lan_wr.exit237_crit_edge:              ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_wr.exit237

do.end.i.i230:                                    ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_wr.exit237

lan_wr.exit237:                                   ; preds = %do.end.i.i230, %if.else134.lan_wr.exit237_crit_edge
  %add.i.i233 = add nuw nsw i32 %conv136, 13
  %arrayidx.i.i234 = getelementptr ptr, ptr %regs.i, i32 %add.i.i233
  %35 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i.i234, align 4
  %add.ptr82.i.i236 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i236, i32 0) #4, !srcloc !25
  br label %do.end152

do.end152:                                        ; preds = %lan_wr.exit237, %lan_wr.exit228, %if.then52.do.end152_crit_edge
  %37 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_port, align 4
  %conv189 = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %38)
  %cmp.not.i.i239 = icmp ult i8 %38, 8
  br i1 %cmp.not.i.i239, label %do.end152.if.end.i.i241_crit_edge, label %do.end.i.i240, !prof !21

do.end152.if.end.i.i241_crit_edge:                ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i241

do.end.i.i240:                                    ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i241

if.end.i.i241:                                    ; preds = %do.end.i.i240, %do.end152.if.end.i.i241_crit_edge
  %add.i.i242 = add nuw nsw i32 %conv189, 13
  %arrayidx.i.i243 = getelementptr ptr, ptr %regs.i, i32 %add.i.i242
  %39 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i243, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i239, label %if.end.i.i241.lan_rmw.exit247_crit_edge, label %do.end.i2.i244, !prof !21

if.end.i.i241.lan_rmw.exit247_crit_edge:          ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit247

do.end.i2.i244:                                   ; preds = %if.end.i.i241
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit247

lan_rmw.exit247:                                  ; preds = %do.end.i2.i244, %if.end.i.i241.lan_rmw.exit247_crit_edge
  %42 = and i32 %41, -855638017
  %43 = or i32 %42, 33554432
  %44 = ptrtoint ptr %arrayidx.i.i243 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i243, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #4, !srcloc !25
  %config190 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9
  %46 = call ptr @memcpy(ptr %config190, ptr %config, i32 24)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phylink_mii_c22_pcs_encode_advertisement(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_port_init(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 9
  %lan966x2 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x2, align 4
  %chip_port = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_port, align 4
  %conv = zext i8 %3 to i32
  %regs.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp20.not.i.i = icmp ult i8 %3, 9
  br i1 %cmp20.not.i.i, label %entry.if.end42.i.i_crit_edge, label %do.end36.i.i, !prof !21

entry.if.end42.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end42.i.i

do.end36.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %do.end36.i.i, %entry.if.end42.i.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28672
  %mul.i.i = shl nuw nsw i32 %conv, 7
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i, i32 112
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp20.not.i.i, label %if.end42.i.i.lan_rmw.exit_crit_edge, label %do.end36.i5.i, !prof !21

if.end42.i.i.lan_rmw.exit_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit

do.end36.i5.i:                                    ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit

lan_rmw.exit:                                     ; preds = %do.end36.i5.i, %if.end42.i.i.lan_rmw.exit_crit_edge
  %7 = and i32 %6, -536870913
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %9, i32 28672
  %add.ptr81.i13.i = getelementptr i8, ptr %add.ptr.i11.i, i32 %mul.i.i
  %add.ptr82.i14.i = getelementptr i8, ptr %add.ptr81.i13.i, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i14.i, i32 %7) #4, !srcloc !25
  tail call void @lan966x_port_config_down(ptr noundef %port)
  %10 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %11)
  %cmp.not = icmp eq i32 %11, 18
  br i1 %cmp.not, label %do.end30, label %lan_rmw.exit.cleanup_crit_edge

lan_rmw.exit.cleanup_crit_edge:                   ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end30:                                         ; preds = %lan_rmw.exit
  %12 = ptrtoint ptr %chip_port to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %chip_port, align 4
  %conv66 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp.not.i.i = icmp ult i8 %13, 8
  br i1 %cmp.not.i.i, label %do.end30.if.end.i.i_crit_edge, label %do.end.i.i, !prof !21

do.end30.if.end.i.i_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %do.end30.if.end.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %conv66, 13
  %arrayidx.i.i75 = getelementptr ptr, ptr %regs.i, i32 %add.i.i
  %14 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i75, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !24
  tail call void @arm_heavy_mb() #4
  br i1 %cmp.not.i.i, label %if.end.i.i.lan_rmw.exit77_crit_edge, label %do.end.i2.i, !prof !21

if.end.i.i.lan_rmw.exit77_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lan_rmw.exit77

do.end.i2.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 238, i32 noundef 9, ptr noundef null) #4
  br label %lan_rmw.exit77

lan_rmw.exit77:                                   ; preds = %do.end.i2.i, %if.end.i.i.lan_rmw.exit77_crit_edge
  %17 = and i32 %16, -855638017
  %18 = or i32 %17, 16777216
  %19 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i75, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #4, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %lan_rmw.exit77, %lan_rmw.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_port.c", i32 46, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lan966x_port_link_down._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lan966x_port_link_down._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_port.c", i32 110, i32 4}
!8 = !{ptr @lan966x_port_link_down._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @lan966x_port_link_down._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 6537674}
!23 = !{i64 2158099581}
!24 = !{i64 2158099884}
!25 = !{i64 6537256}
!26 = !{i64 2158097826}
!27 = !{i64 2158098304}
!28 = !{i8 0, i8 2}
