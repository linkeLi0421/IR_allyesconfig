; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/marvell/mvpp2/mvpp2_tai.c_pt.bc'
source_filename = "../drivers/net/ethernet/marvell/mvpp2/mvpp2_tai.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mvpp2_tai = type { %struct.ptp_clock_info, ptr, ptr, %struct.spinlock, i64, %struct.timespec64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.mvpp2 = type { ptr, ptr, ptr, [9 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x ptr], i32, ptr, i32, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, [30 x i8], ptr, ptr, ptr, [8 x ptr], [32 x ptr], i8, %struct.spinlock }
%struct.ptp_system_timestamp = type { %struct.timespec64, %struct.timespec64 }

@mvpp22_tai_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&tai->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Marvell PP2.2\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 402, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [50 x i8] c"../drivers/net/ethernet/marvell/mvpp2/mvpp2_tai.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 438, i32 26 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mvpp22_tai_probe.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvpp22_tai_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_tai_ptp_clock_index(ptr nocapture noundef readonly %tai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mvpp2_tai, ptr %tai, i32 0, i32 1
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %call = tail call i32 @ptp_clock_index(ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mvpp22_tai_tstamp(ptr noundef %tai, i32 noundef %tstamp, ptr nocapture noundef writeonly %hwtstamp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stamp = getelementptr inbounds %struct.mvpp2_tai, ptr %tai, i32 0, i32 5
  %0 = ptrtoint ptr %stamp to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load volatile i64, ptr %stamp, align 8
  %shr = lshr i32 %tstamp, 30
  %2 = trunc i64 %1 to i32
  %3 = sub i32 %shr, %2
  %conv5 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv5)
  %cmp = icmp eq i32 %conv5, 3
  %spec.select = select i1 %cmp, i32 -1, i32 %conv5
  %and = and i32 %tstamp, 1073741823
  %ts.sroa.8.8.insert.ext = zext i32 %and to i64
  %conv8 = sext i32 %spec.select to i64
  %add = add i64 %1, %conv8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %add)
  %cmp.i.i = icmp sgt i64 %add, 9223372035
  %mul.i.i = mul i64 %add, 1000000000
  %add.i.i = add i64 %mul.i.i, %ts.sroa.8.8.insert.ext
  %retval.0.i.i = select i1 %cmp.i.i, i64 9223372036854775807, i64 %add.i.i, !prof !14
  %4 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %retval.0.i.i, ptr %hwtstamp, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp22_tai_start(ptr noundef %tai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stamp.i = getelementptr inbounds %struct.mvpp2_tai, ptr %tai, i32 0, i32 5
  %call1.i = tail call i32 @mvpp22_tai_gettimex64(ptr noundef %tai, ptr noundef %stamp.i, ptr noundef null) #5
  %ptp_clock = getelementptr inbounds %struct.mvpp2_tai, ptr %tai, i32 0, i32 1
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %call1 = tail call i32 @ptp_schedule_worker(ptr noundef %1, i32 noundef 200) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp22_tai_aux_work(ptr noundef %ptp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stamp = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 5
  %call1 = tail call i32 @mvpp22_tai_gettimex64(ptr noundef %ptp, ptr noundef %stamp, ptr noundef null)
  ret i32 200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_schedule_worker(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mvpp22_tai_stop(ptr nocapture noundef readonly %tai) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mvpp2_tai, ptr %tai, i32 0, i32 1
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  tail call void @ptp_cancel_worker_sync(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptp_cancel_worker_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mvpp22_tai_probe(ptr noundef %dev, ptr nocapture noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 184, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.mvpp2_tai, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mvpp22_tai_probe.__key, i16 noundef signext 3) #5
  %iface_base = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %iface_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iface_base, align 4
  %base = getelementptr inbounds %struct.mvpp2_tai, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %base, align 8
  %period = getelementptr inbounds %struct.mvpp2_tai, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %period to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 12884901888, ptr %period, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 5152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 50331648) #5, !srcloc !15
  %add.ptr7.i.i = getelementptr i8, ptr %1, i32 5156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 0) #5, !srcloc !15
  %add.ptr8.i.i = getelementptr i8, ptr %1, i32 5160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 0) #5, !srcloc !15
  %add.ptr.i = getelementptr i8, ptr %1, i32 5128
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !16
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !15
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %call.i, align 8
  %name = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 1
  %call3 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 32) #5
  %max_adj = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %max_adj to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000000, ptr %max_adj, align 4
  %adjfine = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %adjfine to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mvpp22_tai_adjfine, ptr %adjfine, align 8
  %adjtime = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %adjtime to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mvpp22_tai_adjtime, ptr %adjtime, align 4
  %gettimex64 = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 14
  %10 = ptrtoint ptr %gettimex64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mvpp22_tai_gettimex64, ptr %gettimex64, align 4
  %settime64 = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %settime64 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mvpp22_tai_settime64, ptr %settime64, align 4
  %do_aux_work = getelementptr inbounds %struct.ptp_clock_info, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %do_aux_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mvpp22_tai_aux_work, ptr %do_aux_work, align 8
  %call11 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @mvpp22_tai_remove, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %call16 = tail call ptr @ptp_clock_register(ptr noundef nonnull %call.i, ptr noundef %dev) #5
  %ptp_clock = getelementptr inbounds %struct.mvpp2_tai, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %tai23 = getelementptr inbounds %struct.mvpp2, ptr %priv, i32 0, i32 13
  %15 = ptrtoint ptr %tai23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %tai23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then19, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then19 ], [ 0, %if.end22 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp22_tai_adjfine(ptr noundef %ptp, i32 noundef %scaled_ppm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scaled_ppm)
  %cmp = icmp slt i32 %scaled_ppm, 0
  %0 = tail call i32 @llvm.abs.i32(i32 %scaled_ppm, i1 false)
  %period.i = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 4
  %1 = ptrtoint ptr %period.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %period.i, align 8
  %conv.i = sext i32 %0 to i64
  %mul.i = mul i64 %2, %conv.i
  %shr.i = lshr i64 %mul.i, 4
  %shr1.i = ashr i32 %0, 4
  %add.i = add nsw i32 %shr1.i, -198967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 68719476736, i64 %mul.i)
  %cmp164.i.i.i = icmp ult i64 %mul.i, 68719476736
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !18

if.then168.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i = trunc i64 %shr.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %add.i
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %mvpp22_calc_frac_ppm.exit

if.else174.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add.i, i64 %shr.i) #8, !srcloc !19
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %3, 1
  br label %mvpp22_calc_frac_ppm.exit

mvpp22_calc_frac_ppm.exit:                        ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %mvpp22_calc_frac_ppm.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %dividend.addr.0.i.i.i)
  %cmp4 = icmp ugt i64 %dividend.addr.0.i.i.i, 2147483648
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i64 %dividend.addr.0.i.i.i to i32
  %conv = sub i32 0, %4
  br label %if.end13

if.else:                                          ; preds = %mvpp22_calc_frac_ppm.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %dividend.addr.0.i.i.i)
  %cmp8 = icmp ugt i64 %dividend.addr.0.i.i.i, 2147483647
  br i1 %cmp8, label %if.else.cleanup_crit_edge, label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %conv12 = trunc i64 %dividend.addr.0.i.i.i to i32
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %if.end6
  %frac.0 = phi i32 [ %conv, %if.end6 ], [ %conv12, %if.end11 ]
  %base14 = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 2
  %5 = ptrtoint ptr %base14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base14, align 8
  %lock = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 3
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %add.ptr = getelementptr i8, ptr %6, i32 5220
  %7 = tail call i32 @llvm.bswap.i32(i32 %frac.0)
  %8 = shl i32 %7, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !15
  %add.ptr22 = getelementptr i8, ptr %6, i32 5224
  %and.i41 = and i32 %frac.0, 65535
  %9 = tail call i32 @llvm.bswap.i32(i32 %and.i41) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %9) #5, !srcloc !15
  %add.ptr.i = getelementptr i8, ptr %6, i32 5136
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !16
  %11 = and i32 %10, -486539265
  %12 = or i32 %11, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #5, !srcloc !15
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !16
  %14 = or i32 %13, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #5, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else.cleanup_crit_edge, %if.then3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -34, %if.then3.cleanup_crit_edge ], [ -34, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp22_tai_adjtime(ptr noundef %ptp, i64 noundef %delta) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372036854775808, i64 %delta)
  %cmp = icmp eq i64 %delta, -9223372036854775808
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %delta)
  %cmp1 = icmp slt i64 %delta, 0
  %0 = tail call i64 @llvm.abs.i64(i64 %delta, i1 true)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #5
  call void @ns_to_timespec64(ptr nonnull sret(%struct.timespec64) align 8 %tmp, i64 noundef %0) #5
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %1)
  %ts.sroa.0.0.copyload26 = load i64, ptr %tmp, align 8
  %ts.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %2 = ptrtoint ptr %ts.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %ts.sroa.7.0.copyload27 = load i32, ptr %ts.sroa.7.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #5
  %base4 = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 2
  %3 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base4, align 8
  %lock = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 3
  %call9 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %5 = lshr i64 %ts.sroa.0.0.copyload26, 32
  %conv.i = trunc i64 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %4, i32 5200
  %and.i.i = and i32 %conv.i, 65535
  %6 = call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !15
  %7 = trunc i64 %ts.sroa.0.0.copyload26 to i32
  %add.ptr4.i = getelementptr i8, ptr %4, i32 5204
  %8 = call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = shl i32 %8, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %9) #5, !srcloc !15
  %add.ptr7.i = getelementptr i8, ptr %4, i32 5208
  %and.i2.i = and i32 %7, 65535
  %10 = call i32 @llvm.bswap.i32(i32 %and.i2.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %10) #5, !srcloc !15
  %add.ptr9.i = getelementptr i8, ptr %4, i32 5212
  %11 = call i32 @llvm.bswap.i32(i32 %ts.sroa.7.0.copyload27) #5
  %12 = shl i32 %11, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %12) #5, !srcloc !15
  %add.ptr11.i = getelementptr i8, ptr %4, i32 5216
  %and.i4.i = and i32 %ts.sroa.7.0.copyload27, 65535
  %13 = call i32 @llvm.bswap.i32(i32 %and.i4.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %13) #5, !srcloc !15
  %add.ptr13.i = getelementptr i8, ptr %4, i32 5220
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #5, !srcloc !15
  %add.ptr14.i = getelementptr i8, ptr %4, i32 5224
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #5, !srcloc !15
  %add.ptr.i23 = getelementptr i8, ptr %4, i32 5136
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #5, !srcloc !16
  %15 = and i32 %14, -486539265
  %16 = call i32 @llvm.bswap.i32(i32 %15) #5
  %and1.i.i = select i1 %cmp1, i32 13, i32 9
  %or.i.i = or i32 %and1.i.i, %16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  %17 = call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %17) #5, !srcloc !15
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #5, !srcloc !16
  %19 = or i32 %18, 469762048
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %19) #5, !srcloc !15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp22_tai_gettimex64(ptr noundef %ptp, ptr nocapture noundef writeonly %ts, ptr noundef %sts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %lock = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %tobool.not.i = icmp eq ptr %sts, null
  br i1 %tobool.not.i, label %entry.ptp_read_system_prets.exit_crit_edge, label %if.then.i

entry.ptp_read_system_prets.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptp_read_system_prets.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ktime_get_real_ts64(ptr noundef nonnull %sts) #5
  br label %ptp_read_system_prets.exit

ptp_read_system_prets.exit:                       ; preds = %if.then.i, %entry.ptp_read_system_prets.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 5136
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !16
  %3 = and i32 %2, -486539265
  %4 = or i32 %3, 285212672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !15
  br i1 %tobool.not.i, label %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge, label %if.then.i30

ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge: ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %ptp_read_system_postts.exit

if.then.i30:                                      ; preds = %ptp_read_system_prets.exit
  call void @__sanitizer_cov_trace_pc() #7
  %post_ts.i = getelementptr inbounds %struct.ptp_system_timestamp, ptr %sts, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %post_ts.i) #5
  br label %ptp_read_system_postts.exit

ptp_read_system_postts.exit:                      ; preds = %if.then.i30, %ptp_read_system_prets.exit.ptp_read_system_postts.exit_crit_edge
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !16
  %6 = or i32 %5, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !15
  %add.ptr8 = getelementptr i8, ptr %1, i32 5284
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #5, !srcloc !16
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !20
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %ptp_read_system_postts.exit
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr12 = getelementptr i8, ptr %1, i32 5256
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !16
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %conv.i = zext i32 %11 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %add.ptr1.i = getelementptr i8, ptr %1, i32 5260
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !16
  %13 = and i32 %12, -65536
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %shl3.i = shl nuw i32 %14, 16
  %conv4.i = zext i32 %shl3.i to i64
  %or.i33 = or i64 %shl.i, %conv4.i
  %add.ptr5.i = getelementptr i8, ptr %1, i32 5264
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #5, !srcloc !16
  %16 = and i32 %15, -65536
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #5
  %conv7.i = zext i32 %17 to i64
  %or8.i = or i64 %or.i33, %conv7.i
  %18 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %or8.i, ptr %ts, align 8
  %add.ptr9.i = getelementptr i8, ptr %1, i32 5268
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #5, !srcloc !16
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %shl11.i = shl nuw i32 %21, 16
  %add.ptr12.i = getelementptr i8, ptr %1, i32 5272
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !16
  %23 = and i32 %22, -65536
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %or14.i = or i32 %shl11.i, %24
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %25 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or14.i, ptr %tv_nsec.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %1, i32 5276
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #5, !srcloc !16
  %add.ptr18.i = getelementptr i8, ptr %1, i32 5280
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #5, !srcloc !16
  br label %if.end18

if.else:                                          ; preds = %ptp_read_system_postts.exit
  %and13 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.if.end18_crit_edge, label %if.then15

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr16 = getelementptr i8, ptr %1, i32 5228
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !16
  %29 = and i32 %28, -65536
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %conv.i34 = zext i32 %30 to i64
  %shl.i35 = shl nuw nsw i64 %conv.i34, 32
  %add.ptr1.i36 = getelementptr i8, ptr %1, i32 5232
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i36) #5, !srcloc !16
  %32 = and i32 %31, -65536
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %shl3.i37 = shl nuw i32 %33, 16
  %conv4.i38 = zext i32 %shl3.i37 to i64
  %or.i39 = or i64 %shl.i35, %conv4.i38
  %add.ptr5.i40 = getelementptr i8, ptr %1, i32 5236
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i40) #5, !srcloc !16
  %35 = and i32 %34, -65536
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #5
  %conv7.i41 = zext i32 %36 to i64
  %or8.i42 = or i64 %or.i39, %conv7.i41
  %37 = ptrtoint ptr %ts to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or8.i42, ptr %ts, align 8
  %add.ptr9.i43 = getelementptr i8, ptr %1, i32 5240
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i43) #5, !srcloc !16
  %39 = and i32 %38, -65536
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %shl11.i44 = shl nuw i32 %40, 16
  %add.ptr12.i45 = getelementptr i8, ptr %1, i32 5244
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i45) #5, !srcloc !16
  %42 = and i32 %41, -65536
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #5
  %or14.i46 = or i32 %shl11.i44, %43
  %tv_nsec.i47 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %44 = ptrtoint ptr %tv_nsec.i47 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or14.i46, ptr %tv_nsec.i47, align 8
  %add.ptr15.i48 = getelementptr i8, ptr %1, i32 5248
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i48) #5, !srcloc !16
  %add.ptr18.i49 = getelementptr i8, ptr %1, i32 5252
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i49) #5, !srcloc !16
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else.if.end18_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ -16, %if.else.if.end18_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvpp22_tai_settime64(ptr noundef %ptp, ptr nocapture noundef readonly %ts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 8
  %lock = getelementptr inbounds %struct.mvpp2_tai, ptr %ptp, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %2 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ts, align 8
  %4 = lshr i64 %3, 32
  %conv.i = trunc i64 %4 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 5200
  %and.i.i = and i32 %conv.i, 65535
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !15
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %ts, align 8
  %8 = trunc i64 %7 to i32
  %add.ptr4.i = getelementptr i8, ptr %1, i32 5204
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %10 = shl i32 %9, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #5, !srcloc !15
  %11 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ts, align 8
  %conv6.i = trunc i64 %12 to i32
  %add.ptr7.i = getelementptr i8, ptr %1, i32 5208
  %and.i2.i = and i32 %conv6.i, 65535
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i2.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %13) #5, !srcloc !15
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %add.ptr9.i = getelementptr i8, ptr %1, i32 5212
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %17 = shl i32 %16, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %17) #5, !srcloc !15
  %18 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tv_nsec.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %1, i32 5216
  %and.i4.i = and i32 %19, 65535
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i4.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %20) #5, !srcloc !15
  %add.ptr13.i = getelementptr i8, ptr %1, i32 5220
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #5, !srcloc !15
  %add.ptr14.i = getelementptr i8, ptr %1, i32 5224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #5, !srcloc !15
  %add.ptr = getelementptr i8, ptr %1, i32 5136
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !16
  %22 = and i32 %21, -486604801
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %23) #5, !srcloc !15
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !16
  %25 = or i32 %24, 469762048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #5, !srcloc !15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvpp22_tai_remove(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ptp_clock = getelementptr inbounds %struct.mvpp2_tai, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %ptp_clock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptp_clock, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @ptp_clock_unregister(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ptp_clock_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_timespec64(ptr sret(%struct.timespec64) align 8, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_clock_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @mvpp22_tai_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_tai.c", i32 402, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/marvell/mvpp2/mvpp2_tai.c", i32 438, i32 26}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 696332}
!16 = !{i64 696750}
!17 = !{i64 2157059072}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148954364, i64 2148954644, i64 2148954978, i64 2148955312}
!20 = !{i64 2157063572}
