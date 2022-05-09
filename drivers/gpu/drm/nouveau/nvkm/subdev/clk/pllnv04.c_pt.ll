; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.140, %struct.anon.140 }
%struct.anon.140 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.133 }
%struct.anon.133 = type { i8, i8, i8, i8, i8 }

@nv04_pll_calc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 243, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: unable to compute acceptable pll values\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nv04_pll_calc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nv04_pll_calc._entry_ptr = internal global ptr @nv04_pll_calc._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 26, i64 32]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 243, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @nv04_pll_calc._entry, ptr @nv04_pll_calc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv04_pll_calc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv04_pll_calc(ptr noundef %subdev, ptr noundef readonly %info, i32 noundef %freq, ptr nocapture noundef writeonly %N1, ptr nocapture noundef writeonly %M1, ptr noundef writeonly %N2, ptr nocapture noundef writeonly %M2, ptr nocapture noundef writeonly %P) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %max_freq = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %max_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %tobool1.not = icmp eq ptr %N2, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 4
  %bios1.i = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %bios1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios1.i, align 8
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %vco1.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %6 = ptrtoint ptr %vco1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vco1.i, align 4
  %max_freq.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %max_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_freq.i, align 4
  %min_m.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %10 = ptrtoint ptr %min_m.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %min_m.i, align 4
  %conv.i = zext i8 %11 to i32
  %max_m.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %12 = ptrtoint ptr %max_m.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_m.i, align 1
  %conv5.i = zext i8 %13 to i32
  %min_n.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %14 = ptrtoint ptr %min_n.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %min_n.i, align 2
  %conv7.i = zext i8 %15 to i32
  %max_n.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %16 = ptrtoint ptr %max_n.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_n.i, align 1
  %conv9.i = zext i8 %17 to i32
  %min_inputfreq.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %18 = ptrtoint ptr %min_inputfreq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %min_inputfreq.i, align 4
  %max_inputfreq.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %max_inputfreq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_inputfreq.i, align 4
  %min_p.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 3
  %22 = ptrtoint ptr %min_p.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %min_p.i, align 4
  %conv12.i = zext i8 %23 to i32
  %max_p_usable.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %24 = ptrtoint ptr %max_p_usable.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %max_p_usable.i, align 1
  %conv13.i = zext i8 %25 to i32
  %refclk.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %26 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %refclk.i, align 4
  %version.i = getelementptr inbounds %struct.nvkm_bios, ptr %5, i32 0, i32 7
  %28 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %29)
  %cmp.i = icmp ult i8 %29, 96
  br i1 %cmp.i, label %if.then.i, label %if.then.if.end50.i_crit_edge

if.then.if.end50.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50.i

if.then.i:                                        ; preds = %if.then
  %chip.i = getelementptr inbounds %struct.nvkm_bios, ptr %5, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %chip.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %chip.i, align 1
  %.fr.i = freeze i8 %31
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %.fr.i)
  %cmp18.i = icmp ult i8 %.fr.i, 23
  br i1 %cmp18.i, label %if.then.i.if.then25.i_crit_edge, label %switch.early.test.i

if.then.i.if.then25.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25.i

switch.early.test.i:                              ; preds = %if.then.i
  %32 = zext i8 %.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.fr.i, label %if.else.i [
    i8 32, label %switch.early.test.i.if.then25.i_crit_edge
    i8 26, label %switch.early.test.i.if.then25.i_crit_edge91
  ]

switch.early.test.i.if.then25.i_crit_edge91:      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25.i

switch.early.test.i.if.then25.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25.i

if.then25.i:                                      ; preds = %switch.early.test.i.if.then25.i_crit_edge, %switch.early.test.i.if.then25.i_crit_edge91, %if.then.i.if.then25.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %freq)
  %cmp26.i = icmp sgt i32 %freq, 250000
  %spec.select.i = select i1 %cmp26.i, i32 6, i32 %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %freq)
  %cmp29.i = icmp sgt i32 %freq, 340000
  %spec.select205.i = select i1 %cmp29.i, i32 2, i32 %spec.select.i
  br label %if.end50.i

if.else.i:                                        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %.fr.i)
  %cmp33.i = icmp ult i8 %.fr.i, 64
  br i1 %cmp33.i, label %if.then35.i, label %if.else.i.if.end50.i_crit_edge

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end50.i

if.then35.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %freq)
  %cmp36.i = icmp sgt i32 %freq, 150000
  %spec.select204.i = select i1 %cmp36.i, i32 6, i32 %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %freq)
  %cmp40.i = icmp sgt i32 %freq, 200000
  %maxM.2.i = select i1 %cmp40.i, i32 4, i32 %spec.select204.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 340000, i32 %freq)
  %cmp44.i = icmp sgt i32 %freq, 340000
  %spec.select206.i = select i1 %cmp44.i, i32 2, i32 %maxM.2.i
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then35.i, %if.else.i.if.end50.i_crit_edge, %if.then25.i, %if.then.if.end50.i_crit_edge
  %maxM.4.i = phi i32 [ %conv5.i, %if.then.if.end50.i_crit_edge ], [ %conv5.i, %if.else.i.if.end50.i_crit_edge ], [ %spec.select205.i, %if.then25.i ], [ %spec.select206.i, %if.then35.i ]
  %mul.i = shl i32 %freq, %conv13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %7)
  %cmp51.i = icmp slt i32 %mul.i, %7
  %mul54.i = mul i32 %conv13.i, %freq
  %mul55.i = shl i32 %mul54.i, 1
  %minvco.0.i = select i1 %cmp51.i, i32 %mul54.i, i32 %7
  %maxvco.0.i = select i1 %cmp51.i, i32 %mul55.i, i32 %9
  %div.i = sdiv i32 %freq, 200
  %add.i = add i32 %div.i, %freq
  %33 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 %maxvco.0.i) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp63.not218.i = icmp ugt i8 %23, %25
  br i1 %cmp63.not218.i, label %if.end50.i.getMNP_single.exit_crit_edge, label %for.body.lr.ph.i

if.end50.i.getMNP_single.exit_crit_edge:          ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %getMNP_single.exit

for.body.lr.ph.i:                                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_cmp4(i32 %maxM.4.i, i32 %conv.i)
  %cmp76.not211.i = icmp ult i32 %maxM.4.i, %conv.i
  %div90.i = sdiv i32 %27, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc119.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bestclk.0221.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bestclk.3.i, %for.inc119.i.for.body.i_crit_edge ]
  %bestdelta.0220.i = phi i32 [ 2147483647, %for.body.lr.ph.i ], [ %bestdelta.3.i, %for.inc119.i.for.body.i_crit_edge ]
  %thisP.0219.i = phi i32 [ %conv12.i, %for.body.lr.ph.i ], [ %inc120.i, %for.inc119.i.for.body.i_crit_edge ]
  %shl65.i = shl nuw i32 1, %thisP.0219.i
  %mul66.i = shl i32 %freq, %thisP.0219.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul66.i, i32 %minvco.0.i)
  %cmp67.i = icmp slt i32 %mul66.i, %minvco.0.i
  br i1 %cmp67.i, label %for.body.i.for.inc119.i_crit_edge, label %if.end70.i

for.body.i.for.inc119.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc119.i

if.end70.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul66.i, i32 %33)
  %cmp71.i = icmp sgt i32 %mul66.i, %33
  br i1 %cmp71.i, label %if.end70.i.getMNP_single.exit_crit_edge, label %for.cond75.preheader.i

if.end70.i.getMNP_single.exit_crit_edge:          ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %getMNP_single.exit

for.cond75.preheader.i:                           ; preds = %if.end70.i
  br i1 %cmp76.not211.i, label %for.cond75.preheader.i.for.inc119.i_crit_edge, label %for.body78.lr.ph.i

for.cond75.preheader.i.for.inc119.i_crit_edge:    ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc119.i

for.body78.lr.ph.i:                               ; preds = %for.cond75.preheader.i
  %div102.i = sdiv i32 %shl65.i, 2
  br label %for.body78.i

for.body78.i:                                     ; preds = %for.inc.i.for.body78.i_crit_edge, %for.body78.lr.ph.i
  %bestclk.1214.i = phi i32 [ %bestclk.0221.i, %for.body78.lr.ph.i ], [ %bestclk.2.i, %for.inc.i.for.body78.i_crit_edge ]
  %bestdelta.1213.i = phi i32 [ %bestdelta.0220.i, %for.body78.lr.ph.i ], [ %bestdelta.2.i, %for.inc.i.for.body78.i_crit_edge ]
  %M.0212.i = phi i32 [ %conv.i, %for.body78.lr.ph.i ], [ %inc.i, %for.inc.i.for.body78.i_crit_edge ]
  %div79.i = sdiv i32 %27, %M.0212.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div79.i, i32 %19)
  %cmp80.i = icmp slt i32 %div79.i, %19
  br i1 %cmp80.i, label %for.body78.i.getMNP_single.exit_crit_edge, label %if.end83.i

for.body78.i.getMNP_single.exit_crit_edge:        ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %getMNP_single.exit

if.end83.i:                                       ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div79.i, i32 %21)
  %cmp85.i = icmp sgt i32 %div79.i, %21
  br i1 %cmp85.i, label %if.end83.i.for.inc.i_crit_edge, label %if.end88.i

if.end83.i.for.inc.i_crit_edge:                   ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end88.i:                                       ; preds = %if.end83.i
  %mul89.i = mul i32 %M.0212.i, %mul66.i
  %add91.i = add i32 %mul89.i, %div90.i
  %div92.i = sdiv i32 %add91.i, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %div92.i, i32 %conv7.i)
  %cmp93.i = icmp slt i32 %div92.i, %conv7.i
  br i1 %cmp93.i, label %if.end88.i.for.inc.i_crit_edge, label %if.end96.i

if.end88.i.for.inc.i_crit_edge:                   ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.end96.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div92.i, i32 %conv9.i)
  %cmp97.i = icmp sgt i32 %div92.i, %conv9.i
  br i1 %cmp97.i, label %if.end96.i.for.inc119.i_crit_edge, label %if.end100.i

if.end96.i.for.inc119.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc119.i

if.end100.i:                                      ; preds = %if.end96.i
  %mul101.i = mul i32 %div92.i, %27
  %add103.i = add i32 %mul101.i, %div102.i
  %div104.i = sdiv i32 %add103.i, %shl65.i
  %div105.udiv226.i = lshr i32 %M.0212.i, 1
  %add106.i = add i32 %div104.i, %div105.udiv226.i
  %div107.i = sdiv i32 %add106.i, %M.0212.i
  %sub.i = sub i32 %div107.i, %freq
  %34 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %bestdelta.1213.i)
  %cmp111.i = icmp slt i32 %34, %bestdelta.1213.i
  br i1 %cmp111.i, label %if.then113.i, label %if.end100.i.for.inc.i_crit_edge

if.end100.i.for.inc.i_crit_edge:                  ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then113.i:                                     ; preds = %if.end100.i
  %35 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div92.i, ptr %N1, align 4
  %36 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %M.0212.i, ptr %M1, align 4
  %37 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %thisP.0219.i, ptr %P, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div107.i, i32 %freq)
  %cmp114.i = icmp eq i32 %div107.i, %freq
  br i1 %cmp114.i, label %if.then113.i.getMNP_single.exit_crit_edge, label %if.then113.i.for.inc.i_crit_edge

if.then113.i.for.inc.i_crit_edge:                 ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

if.then113.i.getMNP_single.exit_crit_edge:        ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %getMNP_single.exit

for.inc.i:                                        ; preds = %if.then113.i.for.inc.i_crit_edge, %if.end100.i.for.inc.i_crit_edge, %if.end88.i.for.inc.i_crit_edge, %if.end83.i.for.inc.i_crit_edge
  %bestdelta.2.i = phi i32 [ %bestdelta.1213.i, %if.end83.i.for.inc.i_crit_edge ], [ %bestdelta.1213.i, %if.end88.i.for.inc.i_crit_edge ], [ %34, %if.then113.i.for.inc.i_crit_edge ], [ %bestdelta.1213.i, %if.end100.i.for.inc.i_crit_edge ]
  %bestclk.2.i = phi i32 [ %bestclk.1214.i, %if.end83.i.for.inc.i_crit_edge ], [ %bestclk.1214.i, %if.end88.i.for.inc.i_crit_edge ], [ %div107.i, %if.then113.i.for.inc.i_crit_edge ], [ %bestclk.1214.i, %if.end100.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %M.0212.i, 1
  %exitcond.not = icmp eq i32 %M.0212.i, %maxM.4.i
  br i1 %exitcond.not, label %for.inc.i.for.inc119.i_crit_edge, label %for.inc.i.for.body78.i_crit_edge

for.inc.i.for.body78.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body78.i

for.inc.i.for.inc119.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc119.i

for.inc119.i:                                     ; preds = %for.inc.i.for.inc119.i_crit_edge, %if.end96.i.for.inc119.i_crit_edge, %for.cond75.preheader.i.for.inc119.i_crit_edge, %for.body.i.for.inc119.i_crit_edge
  %bestdelta.3.i = phi i32 [ %bestdelta.0220.i, %for.body.i.for.inc119.i_crit_edge ], [ %bestdelta.0220.i, %for.cond75.preheader.i.for.inc119.i_crit_edge ], [ %bestdelta.2.i, %for.inc.i.for.inc119.i_crit_edge ], [ %bestdelta.1213.i, %if.end96.i.for.inc119.i_crit_edge ]
  %bestclk.3.i = phi i32 [ %bestclk.0221.i, %for.body.i.for.inc119.i_crit_edge ], [ %bestclk.0221.i, %for.cond75.preheader.i.for.inc119.i_crit_edge ], [ %bestclk.2.i, %for.inc.i.for.inc119.i_crit_edge ], [ %bestclk.1214.i, %if.end96.i.for.inc119.i_crit_edge ]
  %inc120.i = add nuw nsw i32 %thisP.0219.i, 1
  %exitcond.i = icmp eq i32 %thisP.0219.i, %conv13.i
  br i1 %exitcond.i, label %for.inc119.i.getMNP_single.exit_crit_edge, label %for.inc119.i.for.body.i_crit_edge

for.inc119.i.for.body.i_crit_edge:                ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc119.i.getMNP_single.exit_crit_edge:        ; preds = %for.inc119.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %getMNP_single.exit

getMNP_single.exit:                               ; preds = %for.inc119.i.getMNP_single.exit_crit_edge, %if.then113.i.getMNP_single.exit_crit_edge, %for.body78.i.getMNP_single.exit_crit_edge, %if.end70.i.getMNP_single.exit_crit_edge, %if.end50.i.getMNP_single.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end50.i.getMNP_single.exit_crit_edge ], [ %bestclk.1214.i, %for.body78.i.getMNP_single.exit_crit_edge ], [ %freq, %if.then113.i.getMNP_single.exit_crit_edge ], [ %bestclk.3.i, %for.inc119.i.getMNP_single.exit_crit_edge ], [ %bestclk.0221.i, %if.end70.i.getMNP_single.exit_crit_edge ]
  br i1 %tobool1.not, label %getMNP_single.exit.if.end5_crit_edge, label %if.then3

getMNP_single.exit.if.end5_crit_edge:             ; preds = %getMNP_single.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then3:                                         ; preds = %getMNP_single.exit
  call void @__sanitizer_cov_trace_pc() #5
  %38 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %N2, align 4
  %39 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %M2, align 4
  br label %if.end5

if.else:                                          ; preds = %entry
  %chip.i30 = getelementptr inbounds %struct.nvkm_bios, ptr %5, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %chip.i30 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %chip.i30, align 1
  %vco1.i31 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7
  %42 = ptrtoint ptr %vco1.i31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vco1.i31, align 4
  %max_freq.i32 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %max_freq.i32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_freq.i32, align 4
  %vco2.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8
  %46 = ptrtoint ptr %vco2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vco2.i, align 4
  %min_inputfreq.i33 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 2
  %48 = ptrtoint ptr %min_inputfreq.i33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %min_inputfreq.i33, align 4
  %min_inputfreq7.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 2
  %50 = ptrtoint ptr %min_inputfreq7.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %min_inputfreq7.i, align 4
  %max_inputfreq.i34 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 3
  %52 = ptrtoint ptr %max_inputfreq.i34 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_inputfreq.i34, align 4
  %max_inputfreq10.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %max_inputfreq10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_inputfreq10.i, align 4
  %min_m.i35 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 4
  %56 = ptrtoint ptr %min_m.i35 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %min_m.i35, align 4
  %max_m.i36 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 5
  %58 = ptrtoint ptr %max_m.i36 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %max_m.i36, align 1
  %min_n.i37 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 6
  %60 = ptrtoint ptr %min_n.i37 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %min_n.i37, align 2
  %max_n.i38 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 7, i32 7
  %62 = ptrtoint ptr %max_n.i38 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %max_n.i38, align 1
  %min_m20.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 4
  %64 = ptrtoint ptr %min_m20.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %min_m20.i, align 4
  %max_m23.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 5
  %66 = ptrtoint ptr %max_m23.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_m23.i, align 1
  %min_n26.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 6
  %68 = ptrtoint ptr %min_n26.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %min_n26.i, align 2
  %max_n29.i = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 8, i32 7
  %70 = ptrtoint ptr %max_n29.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %max_n29.i, align 1
  %max_p_usable.i39 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 6
  %72 = ptrtoint ptr %max_p_usable.i39 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %max_p_usable.i39, align 1
  %conv31.i = zext i8 %73 to i32
  %refclk.i40 = getelementptr inbounds %struct.nvbios_pll, ptr %info, i32 0, i32 2
  %74 = ptrtoint ptr %refclk.i40 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %refclk.i40, align 4
  %div.neg.i = sdiv i32 %1, -200
  %sub.i42 = add i32 %div.neg.i, %1
  %div36.i = sdiv i32 %sub.i42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq)
  %tobool.not.i = icmp eq i32 %freq, 0
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.else
  %log2P.0.i = phi i32 [ 0, %if.else ], [ %inc.i43, %for.cond.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %log2P.0.i, i32 %conv31.i)
  %cmp37.i = icmp uge i32 %log2P.0.i, %conv31.i
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp37.i
  %shr.i = ashr i32 %div36.i, %log2P.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %freq)
  %cmp40.not.i = icmp slt i32 %shr.i, %freq
  %or.cond256.i = select i1 %or.cond.i, i1 true, i1 %cmp40.not.i
  %inc.i43 = add nuw nsw i32 %log2P.0.i, 1
  br i1 %or.cond256.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %71)
  %cmp33.i41 = icmp eq i8 %69, %71
  %conv16.i = zext i8 %61 to i32
  %conv21.i = zext i8 %65 to i32
  %conv27.i = zext i8 %69 to i32
  %conv30.i = zext i8 %71 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp.i44 = icmp eq i8 %65, %67
  %spec.select.i45 = select i1 %cmp.i44, i1 %cmp33.i41, i1 false
  %shl.i = shl i32 %freq, %log2P.0.i
  %div43.i = sdiv i32 %freq, 200
  %add.i46 = add i32 %div43.i, %freq
  %76 = tail call i32 @llvm.smax.i32(i32 %1, i32 %add.i46) #3
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp49.not286.i = icmp ugt i8 %57, %59
  br i1 %cmp49.not286.i, label %for.end.i.do.body_crit_edge, label %for.body51.lr.ph.i

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

for.body51.lr.ph.i:                               ; preds = %for.end.i
  %conv24.i = zext i8 %67 to i32
  %conv18.i = zext i8 %63 to i32
  %conv14.i = zext i8 %59 to i32
  %conv12.i47 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %63)
  %cmp63.not278.i = icmp ugt i8 %61, %63
  call void @__sanitizer_cov_trace_cmp1(i8 %65, i8 %67)
  %cmp76.not265.i = icmp ugt i8 %65, %67
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %41)
  %cmp103.i = icmp ult i8 %41, 96
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.inc145.i.for.body51.i_crit_edge, %for.body51.lr.ph.i
  %bestclk.0289.i = phi i32 [ 0, %for.body51.lr.ph.i ], [ %bestclk.5.i, %for.inc145.i.for.body51.i_crit_edge ]
  %bestdelta.0288.i = phi i32 [ 2147483647, %for.body51.lr.ph.i ], [ %bestdelta.5.i, %for.inc145.i.for.body51.i_crit_edge ]
  %M1.0287.i = phi i32 [ %conv12.i47, %for.body51.lr.ph.i ], [ %inc146.i, %for.inc145.i.for.body51.i_crit_edge ]
  %div52.i = sdiv i32 %75, %M1.0287.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div52.i, i32 %49)
  %cmp53.i = icmp slt i32 %div52.i, %49
  br i1 %cmp53.i, label %for.body51.i.if.end5_crit_edge, label %if.end56.i

for.body51.i.if.end5_crit_edge:                   ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end56.i:                                       ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div52.i, i32 %53)
  %cmp58.i = icmp sgt i32 %div52.i, %53
  %brmerge.i = select i1 %cmp58.i, i1 true, i1 %cmp63.not278.i
  br i1 %brmerge.i, label %if.end56.i.for.inc145.i_crit_edge, label %if.end56.i.for.body65.i_crit_edge

if.end56.i.for.body65.i_crit_edge:                ; preds = %if.end56.i
  br label %for.body65.i

if.end56.i.for.inc145.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc145.i

for.body65.i:                                     ; preds = %for.inc142.i.for.body65.i_crit_edge, %if.end56.i.for.body65.i_crit_edge
  %bestclk.1281.i = phi i32 [ %bestclk.4.i, %for.inc142.i.for.body65.i_crit_edge ], [ %bestclk.0289.i, %if.end56.i.for.body65.i_crit_edge ]
  %bestdelta.1280.i = phi i32 [ %bestdelta.4.i, %for.inc142.i.for.body65.i_crit_edge ], [ %bestdelta.0288.i, %if.end56.i.for.body65.i_crit_edge ]
  %N1.0279.i = phi i32 [ %inc143.i, %for.inc142.i.for.body65.i_crit_edge ], [ %conv16.i, %if.end56.i.for.body65.i_crit_edge ]
  %mul.i48 = mul i32 %N1.0279.i, %75
  %div66.i = sdiv i32 %mul.i48, %M1.0287.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div66.i, i32 %43)
  %cmp67.i49 = icmp slt i32 %div66.i, %43
  br i1 %cmp67.i49, label %for.body65.i.for.inc142.i_crit_edge, label %if.end70.i51

for.body65.i.for.inc142.i_crit_edge:              ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

if.end70.i51:                                     ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div66.i, i32 %45)
  %cmp71.i50 = icmp sgt i32 %div66.i, %45
  br i1 %cmp71.i50, label %if.end70.i51.for.inc145.i_crit_edge, label %for.cond75.preheader.i52

if.end70.i51.for.inc145.i_crit_edge:              ; preds = %if.end70.i51
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc145.i

for.cond75.preheader.i52:                         ; preds = %if.end70.i51
  br i1 %cmp76.not265.i, label %for.cond75.preheader.i52.for.inc142.i_crit_edge, label %for.body78.lr.ph.i54

for.cond75.preheader.i52.for.inc142.i_crit_edge:  ; preds = %for.cond75.preheader.i52
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

for.body78.lr.ph.i54:                             ; preds = %for.cond75.preheader.i52
  %div90.i53 = sdiv i32 %div66.i, 2
  br label %for.body78.i57

for.body78.i57:                                   ; preds = %for.inc139.i.for.body78.i57_crit_edge, %for.body78.lr.ph.i54
  %bestclk.2269.i = phi i32 [ %bestclk.1281.i, %for.body78.lr.ph.i54 ], [ %bestclk.3.i69, %for.inc139.i.for.body78.i57_crit_edge ]
  %bestdelta.2267.i = phi i32 [ %bestdelta.1280.i, %for.body78.lr.ph.i54 ], [ %bestdelta.3.i68, %for.inc139.i.for.body78.i57_crit_edge ]
  %M2.0266.i = phi i32 [ %conv21.i, %for.body78.lr.ph.i54 ], [ %inc140.i, %for.inc139.i.for.body78.i57_crit_edge ]
  %div79.i55 = sdiv i32 %div66.i, %M2.0266.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div79.i55, i32 %51)
  %cmp80.i56 = icmp slt i32 %div79.i55, %51
  br i1 %cmp80.i56, label %for.body78.i57.for.inc142.i_crit_edge, label %if.end83.i59

for.body78.i57.for.inc142.i_crit_edge:            ; preds = %for.body78.i57
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

if.end83.i59:                                     ; preds = %for.body78.i57
  call void @__sanitizer_cov_trace_cmp4(i32 %div79.i55, i32 %55)
  %cmp85.i58 = icmp sgt i32 %div79.i55, %55
  br i1 %cmp85.i58, label %if.end83.i59.for.inc139.i_crit_edge, label %if.end88.i64

if.end83.i59.for.inc139.i_crit_edge:              ; preds = %if.end83.i59
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.end88.i64:                                     ; preds = %if.end83.i59
  %mul89.i60 = mul i32 %M2.0266.i, %shl.i
  %add91.i61 = add i32 %mul89.i60, %div90.i53
  %div92.i62 = sdiv i32 %add91.i61, %div66.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div92.i62, i32 %conv27.i)
  %cmp93.i63 = icmp slt i32 %div92.i62, %conv27.i
  br i1 %cmp93.i63, label %if.end88.i64.for.inc139.i_crit_edge, label %if.end96.i66

if.end88.i64.for.inc139.i_crit_edge:              ; preds = %if.end88.i64
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.end96.i66:                                     ; preds = %if.end88.i64
  call void @__sanitizer_cov_trace_cmp4(i32 %div92.i62, i32 %conv30.i)
  %cmp97.i65 = icmp sgt i32 %div92.i62, %conv30.i
  br i1 %cmp97.i65, label %if.end96.i66.for.inc142.i_crit_edge, label %if.end100.i67

if.end96.i66.for.inc142.i_crit_edge:              ; preds = %if.end96.i66
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

if.end100.i67:                                    ; preds = %if.end96.i66
  br i1 %spec.select.i45, label %if.end100.i67.if.end125.i_crit_edge, label %if.then102.i

if.end100.i67.if.end125.i_crit_edge:              ; preds = %if.end100.i67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end125.i

if.then102.i:                                     ; preds = %if.end100.i67
  br i1 %cmp103.i, label %if.then105.i, label %if.then102.i.if.end114.i_crit_edge

if.then102.i.if.end114.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end114.i

if.then105.i:                                     ; preds = %if.then102.i
  %div106.i = sdiv i32 %div92.i62, %M2.0266.i
  %77 = add i32 %div106.i, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %77)
  %78 = icmp ult i32 %77, -7
  br i1 %78, label %if.then105.i.for.inc139.i_crit_edge, label %if.then105.i.if.end114.i_crit_edge

if.then105.i.if.end114.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end114.i

if.then105.i.for.inc139.i_crit_edge:              ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.end114.i:                                      ; preds = %if.then105.i.if.end114.i_crit_edge, %if.then102.i.if.end114.i_crit_edge
  %mul115.i = mul i32 %div92.i62, %div66.i
  %div116.i = sdiv i32 %mul115.i, %M2.0266.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div116.i, i32 %47)
  %cmp117.i = icmp slt i32 %div116.i, %47
  br i1 %cmp117.i, label %if.end114.i.for.inc142.i_crit_edge, label %if.end120.i

if.end114.i.for.inc142.i_crit_edge:               ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

if.end120.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div116.i, i32 %76)
  %cmp121.i = icmp sgt i32 %div116.i, %76
  br i1 %cmp121.i, label %if.end120.i.for.inc139.i_crit_edge, label %if.end120.i.if.end125.i_crit_edge

if.end120.i.if.end125.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end125.i

if.end120.i.for.inc139.i_crit_edge:               ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.end125.i:                                      ; preds = %if.end120.i.if.end125.i_crit_edge, %if.end100.i67.if.end125.i_crit_edge
  %calcclk2.0.i = phi i32 [ %div116.i, %if.end120.i.if.end125.i_crit_edge ], [ %div66.i, %if.end100.i67.if.end125.i_crit_edge ]
  %shr126.i = ashr i32 %calcclk2.0.i, %log2P.0.i
  %sub127.i = sub i32 %shr126.i, %freq
  %79 = tail call i32 @llvm.abs.i32(i32 %sub127.i, i1 false) #3
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %bestdelta.2267.i)
  %cmp131.i = icmp slt i32 %79, %bestdelta.2267.i
  br i1 %cmp131.i, label %if.then133.i, label %if.end125.i.for.inc139.i_crit_edge

if.end125.i.for.inc139.i_crit_edge:               ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.then133.i:                                     ; preds = %if.end125.i
  %80 = ptrtoint ptr %N1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %N1.0279.i, ptr %N1, align 4
  %81 = ptrtoint ptr %M1 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %M1.0287.i, ptr %M1, align 4
  %82 = ptrtoint ptr %N2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div92.i62, ptr %N2, align 4
  %83 = ptrtoint ptr %M2 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %M2.0266.i, ptr %M2, align 4
  %84 = ptrtoint ptr %P to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %log2P.0.i, ptr %P, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr126.i, i32 %freq)
  %cmp134.i = icmp eq i32 %shr126.i, %freq
  br i1 %cmp134.i, label %if.then133.i.if.end5_crit_edge, label %if.then133.i.for.inc139.i_crit_edge

if.then133.i.for.inc139.i_crit_edge:              ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc139.i

if.then133.i.if.end5_crit_edge:                   ; preds = %if.then133.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

for.inc139.i:                                     ; preds = %if.then133.i.for.inc139.i_crit_edge, %if.end125.i.for.inc139.i_crit_edge, %if.end120.i.for.inc139.i_crit_edge, %if.then105.i.for.inc139.i_crit_edge, %if.end88.i64.for.inc139.i_crit_edge, %if.end83.i59.for.inc139.i_crit_edge
  %bestdelta.3.i68 = phi i32 [ %bestdelta.2267.i, %if.end83.i59.for.inc139.i_crit_edge ], [ %bestdelta.2267.i, %if.end88.i64.for.inc139.i_crit_edge ], [ %79, %if.then133.i.for.inc139.i_crit_edge ], [ %bestdelta.2267.i, %if.end125.i.for.inc139.i_crit_edge ], [ %bestdelta.2267.i, %if.then105.i.for.inc139.i_crit_edge ], [ %bestdelta.2267.i, %if.end120.i.for.inc139.i_crit_edge ]
  %bestclk.3.i69 = phi i32 [ %bestclk.2269.i, %if.end83.i59.for.inc139.i_crit_edge ], [ %bestclk.2269.i, %if.end88.i64.for.inc139.i_crit_edge ], [ %shr126.i, %if.then133.i.for.inc139.i_crit_edge ], [ %bestclk.2269.i, %if.end125.i.for.inc139.i_crit_edge ], [ %bestclk.2269.i, %if.then105.i.for.inc139.i_crit_edge ], [ %bestclk.2269.i, %if.end120.i.for.inc139.i_crit_edge ]
  %inc140.i = add nuw nsw i32 %M2.0266.i, 1
  %exitcond.i70 = icmp eq i32 %M2.0266.i, %conv24.i
  br i1 %exitcond.i70, label %for.inc139.i.for.inc142.i_crit_edge, label %for.inc139.i.for.body78.i57_crit_edge

for.inc139.i.for.body78.i57_crit_edge:            ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body78.i57

for.inc139.i.for.inc142.i_crit_edge:              ; preds = %for.inc139.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc142.i

for.inc142.i:                                     ; preds = %for.inc139.i.for.inc142.i_crit_edge, %if.end114.i.for.inc142.i_crit_edge, %if.end96.i66.for.inc142.i_crit_edge, %for.body78.i57.for.inc142.i_crit_edge, %for.cond75.preheader.i52.for.inc142.i_crit_edge, %for.body65.i.for.inc142.i_crit_edge
  %bestdelta.4.i = phi i32 [ %bestdelta.1280.i, %for.body65.i.for.inc142.i_crit_edge ], [ %bestdelta.1280.i, %for.cond75.preheader.i52.for.inc142.i_crit_edge ], [ %bestdelta.3.i68, %for.inc139.i.for.inc142.i_crit_edge ], [ %bestdelta.2267.i, %for.body78.i57.for.inc142.i_crit_edge ], [ %bestdelta.2267.i, %if.end96.i66.for.inc142.i_crit_edge ], [ %bestdelta.2267.i, %if.end114.i.for.inc142.i_crit_edge ]
  %bestclk.4.i = phi i32 [ %bestclk.1281.i, %for.body65.i.for.inc142.i_crit_edge ], [ %bestclk.1281.i, %for.cond75.preheader.i52.for.inc142.i_crit_edge ], [ %bestclk.3.i69, %for.inc139.i.for.inc142.i_crit_edge ], [ %bestclk.2269.i, %for.body78.i57.for.inc142.i_crit_edge ], [ %bestclk.2269.i, %if.end96.i66.for.inc142.i_crit_edge ], [ %bestclk.2269.i, %if.end114.i.for.inc142.i_crit_edge ]
  %inc143.i = add nuw nsw i32 %N1.0279.i, 1
  %exitcond293.i = icmp eq i32 %N1.0279.i, %conv18.i
  br i1 %exitcond293.i, label %for.inc142.i.for.inc145.i_crit_edge, label %for.inc142.i.for.body65.i_crit_edge

for.inc142.i.for.body65.i_crit_edge:              ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body65.i

for.inc142.i.for.inc145.i_crit_edge:              ; preds = %for.inc142.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc145.i

for.inc145.i:                                     ; preds = %for.inc142.i.for.inc145.i_crit_edge, %if.end70.i51.for.inc145.i_crit_edge, %if.end56.i.for.inc145.i_crit_edge
  %bestdelta.5.i = phi i32 [ %bestdelta.0288.i, %if.end56.i.for.inc145.i_crit_edge ], [ %bestdelta.4.i, %for.inc142.i.for.inc145.i_crit_edge ], [ %bestdelta.1280.i, %if.end70.i51.for.inc145.i_crit_edge ]
  %bestclk.5.i = phi i32 [ %bestclk.0289.i, %if.end56.i.for.inc145.i_crit_edge ], [ %bestclk.4.i, %for.inc142.i.for.inc145.i_crit_edge ], [ %bestclk.1281.i, %if.end70.i51.for.inc145.i_crit_edge ]
  %inc146.i = add nuw nsw i32 %M1.0287.i, 1
  %exitcond294.i = icmp eq i32 %M1.0287.i, %conv14.i
  br i1 %exitcond294.i, label %for.inc145.i.if.end5_crit_edge, label %for.inc145.i.for.body51.i_crit_edge

for.inc145.i.for.body51.i_crit_edge:              ; preds = %for.inc145.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body51.i

for.inc145.i.if.end5_crit_edge:                   ; preds = %for.inc145.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.end5:                                          ; preds = %for.inc145.i.if.end5_crit_edge, %if.then133.i.if.end5_crit_edge, %for.body51.i.if.end5_crit_edge, %if.then3, %getMNP_single.exit.if.end5_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %if.then3 ], [ %retval.0.i, %getMNP_single.exit.if.end5_crit_edge ], [ %freq, %if.then133.i.if.end5_crit_edge ], [ %bestclk.5.i, %for.inc145.i.if.end5_crit_edge ], [ %bestclk.0289.i, %for.body51.i.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool6.not = icmp eq i32 %ret.0, 0
  br i1 %tobool6.not, label %if.end5.do.body_crit_edge, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %for.end.i.do.body_crit_edge
  %debug = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 5
  %85 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp.not = icmp eq i32 %86, 0
  br i1 %cmp.not, label %do.body.if.end13_crit_edge, label %do.end

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %87 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %88, i32 0, i32 2
  %89 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str, ptr noundef %name) #6
  br label %if.end13

if.end13:                                         ; preds = %do.end, %do.body.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %ret.074 = phi i32 [ 0, %do.body.if.end13_crit_edge ], [ 0, %do.end ], [ %ret.0, %if.end5.if.end13_crit_edge ]
  ret i32 %ret.074
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/clk/pllnv04.c", i32 243, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nv04_pll_calc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nv04_pll_calc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
