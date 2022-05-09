; ModuleID = '/llk/IR_all_yes/drivers/clocksource/h8300_tpu.c_pt.bc'
source_filename = "../drivers/clocksource/h8300_tpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tpu_priv = type { %struct.clocksource, ptr, ptr, %struct.raw_spinlock, i32 }
%struct.clocksource = type { ptr, i64, i32, i32, i64, i32, i32, i64, ptr, %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__of_table_h8300_tpu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,tpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @h8300_tpu_init }, section "__timer_of_table", align 4
@h8300_tpu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013failed to get clock for clocksource\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"h8300_tpu_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clocksource/h8300_tpu.c\00", [32 x i8] zeroinitializer }, align 32
@h8300_tpu_init._entry_ptr = internal global ptr @h8300_tpu_init._entry, section ".printk_index", align 4
@h8300_tpu_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013failed to map registers for clocksource\0A\00", [53 x i8] zeroinitializer }, align 32
@h8300_tpu_init._entry_ptr.5 = internal global ptr @h8300_tpu_init._entry.3, section ".printk_index", align 4
@h8300_tpu_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@h8300_tpu_init._entry_ptr.7 = internal global ptr @h8300_tpu_init._entry.6, section ".printk_index", align 4
@tpu_priv = internal global { %struct.tpu_priv, [32 x i8] } { %struct.tpu_priv { %struct.clocksource { ptr @tpu_clocksource_read, i64 4294967295, i32 0, i32 0, i64 0, i32 0, i32 0, i64 0, ptr @.str.8, %struct.list_head zeroinitializer, i32 200, i32 0, i32 0, i32 1, ptr @tpu_clocksource_enable, ptr @tpu_clocksource_disable, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, %struct.raw_spinlock zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"H8S_TPU\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 131, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 137, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 142, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"tpu_priv\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 108, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [35 x i8] c"../drivers/clocksource/h8300_tpu.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 110, i32 11 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__of_table_h8300_tpu, ptr @h8300_tpu_init._entry, ptr @h8300_tpu_init._entry.3, ptr @h8300_tpu_init._entry.6, ptr @h8300_tpu_init._entry_ptr, ptr @h8300_tpu_init._entry_ptr.5, ptr @h8300_tpu_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @tpu_priv, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_tpu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_tpu_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @h8300_tpu_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpu_priv to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @h8300_tpu_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %free_clk

if.end12:                                         ; preds = %if.end
  %call13 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  tail call void @iounmap(ptr noundef null) #4
  br label %free_clk

if.end23:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  store ptr %call4, ptr getelementptr inbounds (%struct.tpu_priv, ptr @tpu_priv, i32 0, i32 1), align 8
  store ptr %call13, ptr getelementptr inbounds (%struct.tpu_priv, ptr @tpu_priv, i32 0, i32 2), align 4
  %call26 = tail call i32 @clk_get_rate(ptr noundef %call) #4
  %div39 = lshr i32 %call26, 6
  %call.i = tail call i32 @__clocksource_register_scale(ptr noundef nonnull @tpu_priv, i32 noundef 1, i32 noundef %div39) #4
  br label %cleanup

free_clk:                                         ; preds = %do.end20, %do.end9
  tail call void @clk_put(ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %free_clk, %if.end23, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call.i, %if.end23 ], [ -6, %free_clk ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @tpu_clocksource_read(ptr noundef %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 3
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %mapbase1.i = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 1
  %0 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapbase1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 5
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %3 = and i8 %2, 16
  %and.i = zext i8 %3 to i32
  %mapbase2.i.i = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %entry
  %o1.0.i = phi i32 [ %and.i, %entry ], [ %and8.i, %do.body.i.backedge ]
  %4 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapbase1.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %7 = ptrtoint ptr %mapbase2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mapbase2.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %8, i32 6
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %10 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mapbase1.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %11, i32 6
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i46.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv.i47.i = zext i16 %12 to i32
  %shl.i48.i = shl nuw i32 %conv.i47.i, 16
  %13 = ptrtoint ptr %mapbase2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mapbase2.i.i, align 4
  %add.ptr2.i50.i = getelementptr i8, ptr %14, i32 6
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i50.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %conv5.i51.i = zext i16 %15 to i32
  %or.i52.i = or i32 %shl.i48.i, %conv5.i51.i
  %16 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mapbase1.i, align 8
  %add.ptr.i54.i = getelementptr i8, ptr %17, i32 6
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i54.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !31
  %conv.i55.i = zext i16 %18 to i32
  %shl.i56.i = shl nuw i32 %conv.i55.i, 16
  %19 = ptrtoint ptr %mapbase2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapbase2.i.i, align 4
  %add.ptr2.i58.i = getelementptr i8, ptr %20, i32 6
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i58.i) #4, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !32
  %conv5.i59.i = zext i16 %21 to i32
  %or.i60.i = or i32 %shl.i56.i, %conv5.i59.i
  %22 = ptrtoint ptr %mapbase1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapbase1.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %23, i32 5
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %25 = and i8 %24, 16
  %and8.i = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %o1.0.i, i32 %and8.i)
  %cmp.not.i = icmp eq i32 %o1.0.i, %and8.i
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.body.i.do.body.i.backedge_crit_edge, !prof !33

do.body.i.do.body.i.backedge_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.backedge

lor.lhs.false.i:                                  ; preds = %do.body.i
  %conv.i.i = zext i16 %6 to i32
  %shl.i.i = shl nuw i32 %conv.i.i, 16
  %conv5.i.i = zext i16 %9 to i32
  %or.i.i = or i32 %shl.i.i, %conv5.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %or.i52.i)
  %cmp10.i = icmp ugt i32 %or.i.i, %or.i52.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i.i, i32 %or.i60.i)
  %cmp12.i = icmp ult i32 %or.i.i, %or.i60.i
  %or.cond.i = select i1 %cmp10.i, i1 %cmp12.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false.i.do.body.i.backedge_crit_edge, label %lor.lhs.false14.i, !prof !34

lor.lhs.false.i.do.body.i.backedge_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.backedge

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i52.i, i32 %or.i60.i)
  %cmp15.i = icmp ugt i32 %or.i52.i, %or.i60.i
  %26 = select i1 %cmp15.i, i1 %cmp10.i, i1 false
  %spec.select.i = select i1 %cmp12.i, i1 %cmp15.i, i1 false
  %or.cond44.i = select i1 %26, i1 true, i1 %spec.select.i
  br i1 %or.cond44.i, label %lor.lhs.false14.i.do.body.i.backedge_crit_edge, label %tpu_get_counter.exit, !prof !35

lor.lhs.false14.i.do.body.i.backedge_crit_edge:   ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %lor.lhs.false14.i.do.body.i.backedge_crit_edge, %lor.lhs.false.i.do.body.i.backedge_crit_edge, %do.body.i.do.body.i.backedge_crit_edge
  br label %do.body.i

tpu_get_counter.exit:                             ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv25.i = zext i32 %or.i52.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %o1.0.i)
  %tobool.not = icmp eq i32 %o1.0.i, 0
  %add = or i64 %conv25.i, 4294967296
  %spec.select = select i1 %tobool.not, i64 %conv25.i, i64 %add
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #4
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpu_clocksource_enable(ptr nocapture noundef %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 4
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !33

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 86, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !36
  tail call void @arm_heavy_mb() #4
  %mapbase1 = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 1
  %2 = ptrtoint ptr %mapbase1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #4, !srcloc !37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !38
  tail call void @arm_heavy_mb() #4
  %mapbase2 = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 2
  %4 = ptrtoint ptr %mapbase2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapbase2, align 4
  %add.ptr26 = getelementptr i8, ptr %5, i32 6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26, i16 0) #4, !srcloc !37
  %6 = ptrtoint ptr %mapbase1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mapbase1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 15) #4, !srcloc !40
  %8 = ptrtoint ptr %mapbase2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapbase2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %9, i8 3) #4, !srcloc !40
  %10 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cs_enabled, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tpu_clocksource_disable(ptr nocapture noundef %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cs_enabled = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 4
  %0 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cs_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 101, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %mapbase1 = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 1
  %2 = ptrtoint ptr %mapbase1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mapbase1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 0) #4, !srcloc !40
  %mapbase2 = getelementptr inbounds %struct.tpu_priv, ptr %cs, i32 0, i32 2
  %4 = ptrtoint ptr %mapbase2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mapbase2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !39
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 0) #4, !srcloc !40
  %6 = ptrtoint ptr %cs_enabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cs_enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clocksource_register_scale(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__of_table_h8300_tpu, !1, !"__of_table_h8300_tpu", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/h8300_tpu.c", i32 158, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/h8300_tpu.c", i32 131, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @h8300_tpu_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @h8300_tpu_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/h8300_tpu.c", i32 137, i32 3}
!10 = !{ptr @h8300_tpu_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @h8300_tpu_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @h8300_tpu_init._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/h8300_tpu.c", i32 142, i32 3}
!14 = !{ptr @h8300_tpu_init._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/h8300_tpu.c", i32 110, i32 11}
!17 = !{ptr @tpu_priv, !18, !"tpu_priv", i1 false, i1 false}
!18 = !{!"../drivers/clocksource/h8300_tpu.c", i32 108, i32 24}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i64 3975723}
!29 = !{i64 2151507578}
!30 = !{i64 3975105}
!31 = !{i64 2152642876}
!32 = !{i64 2152643180}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{!"branch_weights", i32 1, i32 4001}
!35 = !{!"branch_weights", i32 6002, i32 8002000}
!36 = !{i64 2152645819}
!37 = !{i64 3974905}
!38 = !{i64 2152646120}
!39 = !{i64 2151509183}
!40 = !{i64 3975328}
!41 = !{!"branch_weights", i32 1, i32 2000}
