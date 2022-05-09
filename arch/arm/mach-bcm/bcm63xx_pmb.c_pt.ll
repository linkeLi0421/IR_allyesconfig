; ModuleID = '/llk/IR_all_yes/arch/arm/mach-bcm/bcm63xx_pmb.c_pt.bc'
source_filename = "../arch/arm/mach-bcm/bcm63xx_pmb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"arch/arm/mach-bcm/bcm63xx_pmb.c\00", [32 x i8] zeroinitializer }, align 32
@pmb_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_power_on_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016PMB: CPU%d is already powered on\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm63xx_pmb_power_on_cpu\00", [39 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_power_on_cpu._entry_ptr = internal global ptr @bcm63xx_pmb_power_on_cpu._entry, section ".printk_index", align 4
@bcm63xx_pmb_get_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013CPU is missing a reg node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bcm63xx_pmb_get_resources\00", [38 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_get_resources._entry_ptr = internal global ptr @bcm63xx_pmb_get_resources._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"resets\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#reset-cells\00", [19 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_get_resources._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013CPU is missing a resets phandle\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_get_resources._entry_ptr.9 = internal global ptr @bcm63xx_pmb_get_resources._entry.7, section ".printk_index", align 4
@bcm63xx_pmb_get_resources._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013reset-controller does not conform to reset-cells\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_get_resources._entry_ptr.12 = internal global ptr @bcm63xx_pmb_get_resources._entry.10, section ".printk_index", align 4
@bcm63xx_pmb_get_resources._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013failed remapping PMB register\0A\00", [63 x i8] zeroinitializer }, align 32
@bcm63xx_pmb_get_resources._entry_ptr.15 = internal global ptr @bcm63xx_pmb_get_resources._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pmb_lock\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 137, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [9 x i8] c"pmb_lock\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 150, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 96, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 100, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 100, i32 49 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 103, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 108, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 114, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [35 x i8] c"../arch/arm/mach-bcm/bcm63xx_pmb.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 84, i32 8 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @bcm63xx_pmb_get_resources._entry, ptr @bcm63xx_pmb_get_resources._entry.10, ptr @bcm63xx_pmb_get_resources._entry.13, ptr @bcm63xx_pmb_get_resources._entry.7, ptr @bcm63xx_pmb_get_resources._entry_ptr, ptr @bcm63xx_pmb_get_resources._entry_ptr.12, ptr @bcm63xx_pmb_get_resources._entry_ptr.15, ptr @bcm63xx_pmb_get_resources._entry_ptr.9, ptr @bcm63xx_pmb_power_on_cpu._entry, ptr @bcm63xx_pmb_power_on_cpu._entry_ptr, ptr @.str, ptr @pmb_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmb_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pmb_power_on_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pmb_get_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pmb_get_resources._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pmb_get_resources._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm63xx_pmb_get_resources._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm63xx_pmb_power_on_cpu(ptr noundef %dn) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %1 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = tail call i64 @of_get_cpu_hwid(ptr noundef %dn, i32 noundef 0) #6
  %conv.i = trunc i64 %call.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv.i)
  %cmp.i = icmp eq i32 %conv.i, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %bcm63xx_pmb_get_resources.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %dn, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  br label %bcm63xx_pmb_get_resources.exit.thread

if.end10.i:                                       ; preds = %if.end.i
  %args_count.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 1
  %2 = ptrtoint ptr %args_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp11.not.i = icmp eq i32 %3, 2
  br i1 %cmp11.not.i, label %if.end19.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %bcm63xx_pmb_get_resources.exit.thread

if.end19.i:                                       ; preds = %if.end10.i
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  %call20.i = call ptr @of_iomap(ptr noundef %5, i32 noundef 0) #6
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %do.end25.i, label %if.end

do.end25.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #9
  br label %bcm63xx_pmb_get_resources.exit.thread

bcm63xx_pmb_get_resources.exit.thread:            ; preds = %do.end25.i, %do.end16.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %do.end25.i ], [ -22, %do.end16.i ], [ %call.i.i, %do.end7.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end19.i
  %args29.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %6 = ptrtoint ptr %args29.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args29.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv.i)
  %cmp = icmp ugt i32 %conv.i, 1
  br i1 %cmp, label %do.end, label %if.end.if.end15_crit_edge, !prof !41

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #6
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pmb_lock) #6
  %and.i.i = shl i32 %7, 12
  %shl.i.i = and i32 %and.i.i, 1044480
  %or2.i.i = or i32 %shl.i.i, -2147483636
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @arm_heavy_mb() #6
  %8 = call i32 @llvm.bswap.i32(i32 %or2.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call20.i, i32 %8) #6, !srcloc !43
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %if.end14.i.i.do.body3.i.i_crit_edge, %if.end15
  %timeout.0.i.i = phi i32 [ 1000, %if.end15 ], [ %dec.i.i, %if.end14.i.i.do.body3.i.i_crit_edge ]
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call20.i) #6, !srcloc !44
  %10 = call i32 @llvm.bswap.i32(i32 %9) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %tobool.not.i.i = icmp sgt i32 %10, -1
  br i1 %tobool.not.i.i, label %do.body3.i.i.bpcm_rd.exit_crit_edge, label %if.end.i.i

do.body3.i.i.bpcm_rd.exit_crit_edge:              ; preds = %do.body3.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end.i.i:                                       ; preds = %do.body3.i.i
  %and7.i.i = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end.i.i.bpcm_rd.exit_crit_edge

if.end.i.i.bpcm_rd.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = and i32 %10, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.bpcm_rd.exit_crit_edge

if.end10.i.i.bpcm_rd.exit_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end14.i.i:                                     ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 214748) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.not.i.i, label %if.end14.i.i.bpcm_rd.exit_crit_edge, label %if.end14.i.i.do.body3.i.i_crit_edge

if.end14.i.i.do.body3.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i

if.end14.i.i.bpcm_rd.exit_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

bpcm_rd.exit:                                     ; preds = %if.end14.i.i.bpcm_rd.exit_crit_edge, %if.end10.i.i.bpcm_rd.exit_crit_edge, %if.end.i.i.bpcm_rd.exit_crit_edge, %do.body3.i.i.bpcm_rd.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %do.body3.i.i.bpcm_rd.exit_crit_edge ], [ -5, %if.end.i.i.bpcm_rd.exit_crit_edge ], [ -110, %if.end10.i.i.bpcm_rd.exit_crit_edge ], [ -110, %if.end14.i.i.bpcm_rd.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %call20.i, i32 12
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !44
  %13 = call i32 @llvm.bswap.i32(i32 %12) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  br i1 %tobool.not.i.i, label %if.end35, label %bpcm_rd.exit.out_crit_edge

bpcm_rd.exit.out_crit_edge:                       ; preds = %bpcm_rd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end35:                                         ; preds = %bpcm_rd.exit
  %add = add i32 %conv.i, 13
  %shl = shl nuw i32 1, %add
  %and = and i32 %13, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.end43, label %do.end40

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv.i) #9
  br label %out

if.end43:                                         ; preds = %if.end35
  %mul = shl i32 %conv.i, 2
  %add44 = add i32 %mul, 52
  %shr.i = lshr exact i32 %add44, 2
  %or1.i.i121 = or i32 %shr.i, %shl.i.i
  %or2.i.i122 = or i32 %or1.i.i121, -2147483648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @arm_heavy_mb() #6
  %14 = call i32 @llvm.bswap.i32(i32 %or2.i.i122) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call20.i, i32 %14) #6, !srcloc !43
  br label %do.body3.i.i125

do.body3.i.i125:                                  ; preds = %if.end14.i.i134.do.body3.i.i125_crit_edge, %if.end43
  %timeout.0.i.i123 = phi i32 [ 1000, %if.end43 ], [ %dec.i.i132, %if.end14.i.i134.do.body3.i.i125_crit_edge ]
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call20.i) #6, !srcloc !44
  %16 = call i32 @llvm.bswap.i32(i32 %15) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool.not.i.i124 = icmp sgt i32 %16, -1
  br i1 %tobool.not.i.i124, label %do.body3.i.i125.bpcm_rd.exit137_crit_edge, label %if.end.i.i128

do.body3.i.i125.bpcm_rd.exit137_crit_edge:        ; preds = %do.body3.i.i125
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit137

if.end.i.i128:                                    ; preds = %do.body3.i.i125
  %and7.i.i126 = and i32 %16, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i126)
  %tobool8.not.i.i127 = icmp eq i32 %and7.i.i126, 0
  br i1 %tobool8.not.i.i127, label %if.end10.i.i131, label %if.end.i.i128.bpcm_rd.exit137_crit_edge

if.end.i.i128.bpcm_rd.exit137_crit_edge:          ; preds = %if.end.i.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit137

if.end10.i.i131:                                  ; preds = %if.end.i.i128
  %and11.i.i129 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i129)
  %tobool12.not.i.i130 = icmp eq i32 %and11.i.i129, 0
  br i1 %tobool12.not.i.i130, label %if.end14.i.i134, label %if.end10.i.i131.bpcm_rd.exit137_crit_edge

if.end10.i.i131.bpcm_rd.exit137_crit_edge:        ; preds = %if.end10.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit137

if.end14.i.i134:                                  ; preds = %if.end10.i.i131
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 214748) #6
  %dec.i.i132 = add nsw i32 %timeout.0.i.i123, -1
  %cmp.not.i.i133 = icmp eq i32 %timeout.0.i.i123, 0
  br i1 %cmp.not.i.i133, label %if.end14.i.i134.bpcm_rd.exit137_crit_edge, label %if.end14.i.i134.do.body3.i.i125_crit_edge

if.end14.i.i134.do.body3.i.i125_crit_edge:        ; preds = %if.end14.i.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i125

if.end14.i.i134.bpcm_rd.exit137_crit_edge:        ; preds = %if.end14.i.i134
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit137

bpcm_rd.exit137:                                  ; preds = %if.end14.i.i134.bpcm_rd.exit137_crit_edge, %if.end10.i.i131.bpcm_rd.exit137_crit_edge, %if.end.i.i128.bpcm_rd.exit137_crit_edge, %do.body3.i.i125.bpcm_rd.exit137_crit_edge
  %retval.0.i.i135 = phi i32 [ 0, %do.body3.i.i125.bpcm_rd.exit137_crit_edge ], [ -5, %if.end.i.i128.bpcm_rd.exit137_crit_edge ], [ -110, %if.end10.i.i131.bpcm_rd.exit137_crit_edge ], [ -110, %if.end14.i.i134.bpcm_rd.exit137_crit_edge ]
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !44
  %19 = call i32 @llvm.bswap.i32(i32 %18) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br i1 %tobool.not.i.i124, label %if.end48, label %bpcm_rd.exit137.out_crit_edge

bpcm_rd.exit137.out_crit_edge:                    ; preds = %bpcm_rd.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end48:                                         ; preds = %bpcm_rd.exit137
  %or = or i32 %19, 3145728
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %val, align 4
  %call51 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, ptr noundef nonnull %val, i32 noundef 28, i32 noundef 3, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end48.out_crit_edge

if.end48.out_crit_edge:                           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end54:                                         ; preds = %if.end48
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %or55 = or i32 %23, 196608
  store i32 %or55, ptr %val, align 4
  %call58 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, ptr noundef nonnull %val, i32 noundef 24, i32 noundef 3, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end54.out_crit_edge

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end61:                                         ; preds = %if.end54
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and62 = and i32 %25, -32769
  store i32 %and62, ptr %val, align 4
  %call65 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, i32 noundef %and62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end68:                                         ; preds = %if.end61
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and69 = and i32 %27, -3841
  store i32 %and69, ptr %val, align 4
  %call72 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, i32 noundef %and69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end75:                                         ; preds = %if.end68
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %or76 = or i32 %29, 2
  store i32 %or76, ptr %val, align 4
  %call79 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, ptr noundef nonnull %val, i32 noundef 0, i32 noundef 32, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end75.out_crit_edge

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end82:                                         ; preds = %if.end75
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %or83 = or i32 %31, 1
  store i32 %or83, ptr %val, align 4
  %call86 = call fastcc i32 @bpcm_wr_rd_mask(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, ptr noundef nonnull %val, i32 noundef 0, i32 noundef 16, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end82.out_crit_edge

if.end82.out_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end89:                                         ; preds = %if.end82
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and90 = and i32 %33, -5
  store i32 %and90, ptr %val, align 4
  %call93 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef %add44, i32 noundef %and90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end89.out_crit_edge

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end96:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %or99 = or i32 %13, %shl
  %call100 = call fastcc i32 @bpcm_wr(ptr noundef nonnull %call20.i, i32 noundef %7, i32 noundef 48, i32 noundef %or99)
  br label %out

out:                                              ; preds = %if.end96, %if.end89.out_crit_edge, %if.end82.out_crit_edge, %if.end75.out_crit_edge, %if.end68.out_crit_edge, %if.end61.out_crit_edge, %if.end54.out_crit_edge, %if.end48.out_crit_edge, %bpcm_rd.exit137.out_crit_edge, %do.end40, %bpcm_rd.exit.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %bpcm_rd.exit.out_crit_edge ], [ 0, %do.end40 ], [ %retval.0.i.i135, %bpcm_rd.exit137.out_crit_edge ], [ %call51, %if.end48.out_crit_edge ], [ %call58, %if.end54.out_crit_edge ], [ %call65, %if.end61.out_crit_edge ], [ %call72, %if.end68.out_crit_edge ], [ %call79, %if.end75.out_crit_edge ], [ %call86, %if.end82.out_crit_edge ], [ %call93, %if.end89.out_crit_edge ], [ %call100, %if.end96 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pmb_lock, i32 noundef %call27) #6
  call void @iounmap(ptr noundef nonnull %call20.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %bcm63xx_pmb_get_resources.exit.thread
  %retval.0 = phi i32 [ %ret.0, %out ], [ %retval.0.i.ph, %bcm63xx_pmb_get_resources.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpcm_wr_rd_mask(ptr noundef %master, i32 noundef %addr, i32 noundef %off, ptr nocapture noundef %val, i32 noundef %shift, i32 noundef %mask, i32 noundef %cond) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %add.ptr.i = getelementptr i8, ptr %master, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !43
  %shr.i = lshr i32 %off, 2
  %and.i.i = shl i32 %addr, 12
  %shl.i.i = and i32 %and.i.i, 1044480
  %or.i.i = or i32 %shl.i.i, %shr.i
  %or2.i.i = or i32 %or.i.i, -2146435072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %master, i32 %3) #6, !srcloc !43
  br label %do.body3.i.i

do.body3.i.i:                                     ; preds = %if.end14.i.i.do.body3.i.i_crit_edge, %entry
  %timeout.0.i.i = phi i32 [ 1000, %entry ], [ %dec.i.i, %if.end14.i.i.do.body3.i.i_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %master) #6, !srcloc !44
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %tobool.not.i.i = icmp sgt i32 %5, -1
  br i1 %tobool.not.i.i, label %do.body.preheader, label %if.end.i.i

do.body.preheader:                                ; preds = %do.body3.i.i
  %or2.i.i26 = or i32 %or.i.i, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %or2.i.i26) #6
  %add.ptr.i40 = getelementptr i8, ptr %master, i32 12
  br label %do.body

if.end.i.i:                                       ; preds = %do.body3.i.i
  %and7.i.i = and i32 %5, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.i.i:                                     ; preds = %if.end.i.i
  %and11.i.i = and i32 %5, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool12.not.i.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end10.i.i.cleanup_crit_edge

if.end10.i.i.cleanup_crit_edge:                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14.i.i:                                     ; preds = %if.end10.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %timeout.0.i.i, 0
  br i1 %cmp.not.i.i, label %if.end14.i.i.cleanup_crit_edge, label %if.end14.i.i.do.body3.i.i_crit_edge

if.end14.i.i.do.body3.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i

if.end14.i.i.cleanup_crit_edge:                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %do.end.do.body_crit_edge, %do.body.preheader
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %master, i32 %6) #6, !srcloc !43
  br label %do.body3.i.i29

do.body3.i.i29:                                   ; preds = %if.end14.i.i38.do.body3.i.i29_crit_edge, %do.body
  %timeout.0.i.i27 = phi i32 [ 1000, %do.body ], [ %dec.i.i36, %if.end14.i.i38.do.body3.i.i29_crit_edge ]
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %master) #6, !srcloc !44
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not.i.i28 = icmp sgt i32 %9, -1
  br i1 %tobool.not.i.i28, label %do.body3.i.i29.bpcm_rd.exit_crit_edge, label %if.end.i.i32

do.body3.i.i29.bpcm_rd.exit_crit_edge:            ; preds = %do.body3.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end.i.i32:                                     ; preds = %do.body3.i.i29
  %and7.i.i30 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i30)
  %tobool8.not.i.i31 = icmp eq i32 %and7.i.i30, 0
  br i1 %tobool8.not.i.i31, label %if.end10.i.i35, label %if.end.i.i32.bpcm_rd.exit_crit_edge

if.end.i.i32.bpcm_rd.exit_crit_edge:              ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end10.i.i35:                                   ; preds = %if.end.i.i32
  %and11.i.i33 = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i33)
  %tobool12.not.i.i34 = icmp eq i32 %and11.i.i33, 0
  br i1 %tobool12.not.i.i34, label %if.end14.i.i38, label %if.end10.i.i35.bpcm_rd.exit_crit_edge

if.end10.i.i35.bpcm_rd.exit_crit_edge:            ; preds = %if.end10.i.i35
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

if.end14.i.i38:                                   ; preds = %if.end10.i.i35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %dec.i.i36 = add nsw i32 %timeout.0.i.i27, -1
  %cmp.not.i.i37 = icmp eq i32 %timeout.0.i.i27, 0
  br i1 %cmp.not.i.i37, label %if.end14.i.i38.bpcm_rd.exit_crit_edge, label %if.end14.i.i38.do.body3.i.i29_crit_edge

if.end14.i.i38.do.body3.i.i29_crit_edge:          ; preds = %if.end14.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i.i29

if.end14.i.i38.bpcm_rd.exit_crit_edge:            ; preds = %if.end14.i.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpcm_rd.exit

bpcm_rd.exit:                                     ; preds = %if.end14.i.i38.bpcm_rd.exit_crit_edge, %if.end10.i.i35.bpcm_rd.exit_crit_edge, %if.end.i.i32.bpcm_rd.exit_crit_edge, %do.body3.i.i29.bpcm_rd.exit_crit_edge
  %retval.0.i.i39 = phi i32 [ 0, %do.body3.i.i29.bpcm_rd.exit_crit_edge ], [ -5, %if.end.i.i32.bpcm_rd.exit_crit_edge ], [ -110, %if.end10.i.i35.bpcm_rd.exit_crit_edge ], [ -110, %if.end14.i.i38.bpcm_rd.exit_crit_edge ]
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #6, !srcloc !44
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  br i1 %tobool.not.i.i28, label %do.end, label %bpcm_rd.exit.cleanup_crit_edge

bpcm_rd.exit.cleanup_crit_edge:                   ; preds = %bpcm_rd.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %bpcm_rd.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !49
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %shr = lshr i32 %15, %shift
  %and = and i32 %shr, %mask
  %cmp.not = icmp eq i32 %and, %cond
  br i1 %cmp.not, label %do.end.cleanup_crit_edge, label %do.end.do.body_crit_edge

do.end.do.body_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.end.cleanup_crit_edge, %bpcm_rd.exit.cleanup_crit_edge, %if.end14.i.i.cleanup_crit_edge, %if.end10.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ %retval.0.i.i39, %bpcm_rd.exit.cleanup_crit_edge ], [ -5, %if.end.i.i.cleanup_crit_edge ], [ -110, %if.end10.i.i.cleanup_crit_edge ], [ -110, %if.end14.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpcm_wr(ptr noundef %master, i32 noundef %addr, i32 noundef %off, i32 noundef %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %add.ptr = getelementptr i8, ptr %master, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !43
  %shr = lshr i32 %off, 2
  %and.i = shl i32 %addr, 12
  %shl.i = and i32 %and.i, 1044480
  %or.i = or i32 %shl.i, %shr
  %or2.i = or i32 %or.i, -2146435072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %master, i32 %1) #6, !srcloc !43
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.end14.i.do.body3.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end14.i.do.body3.i_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %master) #6, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not.i = icmp sgt i32 %3, -1
  br i1 %tobool.not.i, label %do.body3.i.__bpcm_do_op.exit_crit_edge, label %if.end.i

do.body3.i.__bpcm_do_op.exit_crit_edge:           ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpcm_do_op.exit

if.end.i:                                         ; preds = %do.body3.i
  %and7.i = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.__bpcm_do_op.exit_crit_edge

if.end.i.__bpcm_do_op.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpcm_do_op.exit

if.end10.i:                                       ; preds = %if.end.i
  %and11.i = and i32 %3, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.__bpcm_do_op.exit_crit_edge

if.end10.i.__bpcm_do_op.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpcm_do_op.exit

if.end14.i:                                       ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #6
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %cmp.not.i, label %if.end14.i.__bpcm_do_op.exit_crit_edge, label %if.end14.i.do.body3.i_crit_edge

if.end14.i.do.body3.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

if.end14.i.__bpcm_do_op.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__bpcm_do_op.exit

__bpcm_do_op.exit:                                ; preds = %if.end14.i.__bpcm_do_op.exit_crit_edge, %if.end10.i.__bpcm_do_op.exit_crit_edge, %if.end.i.__bpcm_do_op.exit_crit_edge, %do.body3.i.__bpcm_do_op.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.body3.i.__bpcm_do_op.exit_crit_edge ], [ -5, %if.end.i.__bpcm_do_op.exit_crit_edge ], [ -110, %if.end10.i.__bpcm_do_op.exit_crit_edge ], [ -110, %if.end14.i.__bpcm_do_op.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_get_cpu_hwid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 137, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 150, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @bcm63xx_pmb_power_on_cpu._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @bcm63xx_pmb_power_on_cpu._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 96, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @bcm63xx_pmb_get_resources._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @bcm63xx_pmb_get_resources._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 100, i32 39}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 100, i32 49}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 103, i32 3}
!18 = !{ptr @bcm63xx_pmb_get_resources._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm63xx_pmb_get_resources._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 108, i32 3}
!22 = !{ptr @bcm63xx_pmb_get_resources._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm63xx_pmb_get_resources._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 114, i32 3}
!26 = !{ptr @bcm63xx_pmb_get_resources._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @bcm63xx_pmb_get_resources._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-bcm/bcm63xx_pmb.c", i32 84, i32 8}
!30 = !{ptr @pmb_lock, !29, !"pmb_lock", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"auto-init"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2150548190}
!43 = !{i64 1248892}
!44 = !{i64 1249310}
!45 = !{i64 2150548836}
!46 = !{i64 2150550066}
!47 = !{i64 2150550450}
!48 = !{i64 2152081388}
!49 = !{i64 2152081230}
