; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prcm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@curr_prcm_set = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@rate_table = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@cpu_mask = external dso_local local_unnamed_addr global i16, align 2
@sys_ck_rate = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap2_select_table_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Could not set MPU rate to %luMHz\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"omap2_select_table_rate\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c\00", [51 x i8] zeroinitializer }, align 32
@omap2_select_table_rate._entry_ptr = internal global ptr @omap2_select_table_rate._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sys_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not locate sys_ck\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mpu_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virt_prcm_set\00", [18 x i8] zeroinitializer }, align 32
@virt_prcm_set_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_table_mpu_recalc, ptr @omap2_round_to_table_rate, ptr null, ptr null, ptr null, ptr @omap2_select_table_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap2xxx_clkt_vps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Failed to register clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap2xxx_clkt_vps_init\00", [41 x i8] zeroinitializer }, align 32
@omap2xxx_clkt_vps_init._entry_ptr = internal global ptr @omap2xxx_clkt_vps_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq_ck\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"curr_prcm_set\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 42, i32 27 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"rate_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 43, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"sys_ck_rate\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 50, i32 22 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 117, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 200, i32 20 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 202, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 231, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 239, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"virt_prcm_set_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 213, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 248, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [48 x i8] c"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 253, i32 21 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @omap2_select_table_rate._entry, ptr @omap2_select_table_rate._entry_ptr, ptr @omap2xxx_clkt_vps_init._entry, ptr @omap2xxx_clkt_vps_init._entry_ptr, ptr @curr_prcm_set, ptr @rate_table, ptr @sys_ck_rate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @virt_prcm_set_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curr_prcm_set to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rate_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_ck_rate to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_select_table_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virt_prcm_set_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2xxx_clkt_vps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap2_table_mpu_recalc(ptr nocapture readnone %clk, i32 %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @curr_prcm_set, align 4
  %mpu_speed = getelementptr inbounds %struct.prcm_config, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mpu_speed to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mpu_speed, align 4
  ret i32 %2
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_round_to_table_rate(ptr nocapture readnone %hw, i32 noundef %rate, ptr nocapture readnone %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rate_table, align 4
  %mpu_speed18 = getelementptr inbounds %struct.prcm_config, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mpu_speed18 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mpu_speed18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not19 = icmp eq i32 %2, 0
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @cpu_mask to i32))
  %3 = load i16, ptr @cpu_mask, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %11, %for.inc.for.body_crit_edge ]
  %highest_rate.022 = phi i32 [ -22, %for.body.lr.ph ], [ %highest_rate.1, %for.inc.for.body_crit_edge ]
  %ptr.020 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.prcm_config, ptr %ptr.020, i32 0, i32 11
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags, align 4
  %and17 = and i16 %3, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and17)
  %tobool2.not = icmp eq i16 %and17, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %ptr.020 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ptr.020, align 4
  %9 = load i32, ptr @sys_ck_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not = icmp eq i32 %8, %9
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp8.not = icmp ugt i32 %4, %rate
  br i1 %cmp8.not, label %if.end5.for.inc_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %highest_rate.1 = phi i32 [ %highest_rate.022, %if.end.for.inc_crit_edge ], [ %4, %if.end5.for.inc_crit_edge ], [ %highest_rate.022, %for.body.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.prcm_config, ptr %ptr.020, i32 1
  %mpu_speed = getelementptr %struct.prcm_config, ptr %ptr.020, i32 1, i32 2
  %10 = ptrtoint ptr %mpu_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mpu_speed, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge, %entry.for.end_crit_edge
  %highest_rate.2 = phi i32 [ -22, %entry.for.end_crit_edge ], [ %4, %if.end5.for.end_crit_edge ], [ %highest_rate.1, %for.inc.for.end_crit_edge ]
  ret i32 %highest_rate.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_select_table_rate(ptr nocapture readnone %hw, i32 noundef %rate, i32 %parent_rate) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rate_table, align 4
  %mpu_speed136 = getelementptr inbounds %struct.prcm_config, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mpu_speed136 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mpu_speed136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not137 = icmp eq i32 %2, 0
  br i1 %tobool.not137, label %entry.do.end.critedge_crit_edge, label %for.body.lr.ph

entry.do.end.critedge_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.critedge

for.body.lr.ph:                                   ; preds = %entry
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @cpu_mask to i32))
  %3 = load i16, ptr @cpu_mask, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %11, %for.inc.for.body_crit_edge ]
  %prcm.0138 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %flags1 = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 11
  %5 = ptrtoint ptr %flags1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags1, align 4
  %and133 = and i16 %3, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and133)
  %tobool3.not = icmp eq i16 %and133, 0
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = ptrtoint ptr %prcm.0138 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prcm.0138, align 4
  %9 = load i32, ptr @sys_ck_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp.not = icmp ne i32 %8, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp8.not = icmp ugt i32 %4, %rate
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp8.not
  br i1 %or.cond, label %if.end.for.inc_crit_edge, label %if.end15

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.prcm_config, ptr %prcm.0138, i32 1
  %mpu_speed = getelementptr %struct.prcm_config, ptr %prcm.0138, i32 1, i32 2
  %10 = ptrtoint ptr %mpu_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mpu_speed, align 4
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.inc.do.end.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end.critedge_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.critedge

do.end.critedge:                                  ; preds = %for.inc.do.end.critedge_crit_edge, %entry.do.end.critedge_crit_edge
  %div = udiv i32 %rate, 1000000
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %div) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  store ptr %prcm.0138, ptr @curr_prcm_set, align 4
  %call16 = tail call i32 @omap2xxx_clk_get_core_rate() #7
  %dpll_speed = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 1
  %12 = ptrtoint ptr %dpll_speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpll_speed, align 4
  %div17132 = lshr i32 %call16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div17132)
  %cmp18 = icmp eq i32 %13, %div17132
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 1, i32 noundef 1) #7
  br label %cleanup

if.else:                                          ; preds = %if.end15
  %mul = shl i32 %call16, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul)
  %cmp23 = icmp eq i32 %13, %mul
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 2, i32 noundef 1) #7
  br label %cleanup

if.else27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call16)
  %cmp29.not = icmp eq i32 %13, %call16
  br i1 %cmp29.not, label %if.else27.cleanup_crit_edge, label %do.body33

if.else27.cleanup_crit_edge:                      ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body33:                                        ; preds = %if.else27
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !38
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool47.not = icmp eq i32 %and.i, 0
  br i1 %tobool47.not, label %if.then48, label %do.body33.do.end51_crit_edge

do.body33.do.end51_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end51

if.then48:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_off() #7
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body33.do.end51_crit_edge
  %15 = ptrtoint ptr %dpll_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dpll_speed, align 4
  %17 = ptrtoint ptr %prcm.0138 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prcm.0138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp54 = icmp eq i32 %16, %18
  %spec.select = zext i1 %cmp54 to i32
  %cm_clksel2_pll = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 8
  %19 = ptrtoint ptr %cm_clksel2_pll to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cm_clksel2_pll, align 4
  %and58 = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and58)
  %cmp59 = icmp eq i32 %and58, 2
  %done_rate.0 = select i1 %cmp59, i32 2, i32 1
  %cm_clksel_mpu = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 3
  %21 = ptrtoint ptr %cm_clksel_mpu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cm_clksel_mpu, align 4
  %cm_clksel_dsp = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 4
  %23 = ptrtoint ptr %cm_clksel_dsp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cm_clksel_dsp, align 4
  %cm_clksel_gfx = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 5
  %25 = ptrtoint ptr %cm_clksel_gfx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cm_clksel_gfx, align 4
  %cm_clksel1_core = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 6
  %27 = ptrtoint ptr %cm_clksel1_core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cm_clksel1_core, align 4
  %cm_clksel_mdm = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 9
  %29 = ptrtoint ptr %cm_clksel_mdm to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cm_clksel_mdm, align 4
  tail call void @omap2xxx_cm_set_mod_dividers(i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30) #7
  %call64 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 2, i32 noundef 1) #7
  %cm_clksel1_pll = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 7
  %31 = ptrtoint ptr %cm_clksel1_pll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cm_clksel1_pll, align 4
  %base_sdrc_rfr = getelementptr inbounds %struct.prcm_config, ptr %prcm.0138, i32 0, i32 10
  %33 = ptrtoint ptr %base_sdrc_rfr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base_sdrc_rfr, align 4
  %call65 = tail call i32 @omap2_set_prcm(i32 noundef %32, i32 noundef %34, i32 noundef %spec.select) #7
  %call66 = tail call i32 @omap2xxx_sdrc_dll_is_unlocked() #7
  tail call void @omap2xxx_sdrc_init_params(i32 noundef %call66) #7
  %call67 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef %done_rate.0, i32 noundef 0) #7
  br i1 %tobool47.not, label %if.then77, label %do.end51.do.body79_crit_edge

do.end51.do.body79_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

if.then77:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @trace_hardirqs_on() #7
  br label %do.body79

do.body79:                                        ; preds = %if.then77, %do.end51.do.body79_crit_edge
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !39
  %and.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool87.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool87.not, label %if.then91, label %do.body79.do.end94_crit_edge, !prof !40

do.body79.do.end94_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end94

if.then91:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end94

do.end94:                                         ; preds = %if.then91, %do.body79.do.end94_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #7, !srcloc !41
  br label %cleanup

cleanup:                                          ; preds = %do.end94, %if.else27.cleanup_crit_edge, %if.then25, %if.then20, %do.end.critedge
  %retval.0 = phi i32 [ -22, %do.end.critedge ], [ 0, %if.then25 ], [ 0, %do.end94 ], [ 0, %if.else27.cleanup_crit_edge ], [ 0, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_clk_get_core_rate() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_sdrc_reprogram(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_cm_set_mod_dividers(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_set_prcm(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_sdrc_init_params(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_sdrc_dll_is_unlocked() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_clkt_vps_check_bootloader_rates() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap2xxx_clk_get_core_rate() #7
  %0 = load ptr, ptr @rate_table, align 4
  %mpu_speed16 = getelementptr inbounds %struct.prcm_config, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %mpu_speed16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mpu_speed16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not17 = icmp eq i32 %2, 0
  br i1 %tobool.not17, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @cpu_mask to i32))
  %3 = load i16, ptr @cpu_mask, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %prcm.018 = phi ptr [ %0, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %flags = getelementptr inbounds %struct.prcm_config, ptr %prcm.018, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %and15 = and i16 %3, %5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15)
  %tobool2.not = icmp eq i16 %and15, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %prcm.018 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %prcm.018, align 4
  %8 = load i32, ptr @sys_ck_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp.not = icmp eq i32 %7, %8
  br i1 %cmp.not, label %if.end5, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %if.end
  %dpll_speed = getelementptr inbounds %struct.prcm_config, ptr %prcm.018, i32 0, i32 1
  %9 = ptrtoint ptr %dpll_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dpll_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %call)
  %cmp6.not = icmp ugt i32 %10, %call
  br i1 %cmp6.not, label %if.end5.for.inc_crit_edge, label %if.end5.for.end_crit_edge

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.prcm_config, ptr %prcm.018, i32 1
  %mpu_speed = getelementptr %struct.prcm_config, ptr %prcm.018, i32 1, i32 2
  %11 = ptrtoint ptr %mpu_speed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mpu_speed, align 4
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end5.for.end_crit_edge, %entry.for.end_crit_edge
  %prcm.0.lcssa = phi ptr [ %0, %entry.for.end_crit_edge ], [ %prcm.018, %if.end5.for.end_crit_edge ], [ %incdec.ptr, %for.inc.for.end_crit_edge ]
  store ptr %prcm.0.lcssa, ptr @curr_prcm_set, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_clkt_vps_late_init() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.3) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.4) #7
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @clk_get_rate(ptr noundef %call) #7
  store i32 %call17, ptr @sys_ck_rate, align 4
  tail call void @clk_put(ptr noundef %call) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_clkt_vps_init() local_unnamed_addr #3 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.5, ptr %parent_name, align 4
  %call.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.3) #7
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.4) #7
  br label %omap2xxx_clkt_vps_late_init.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = tail call i32 @clk_get_rate(ptr noundef %call.i) #7
  store i32 %call17.i, ptr @sys_ck_rate, align 4
  tail call void @clk_put(ptr noundef %call.i) #7
  br label %omap2xxx_clkt_vps_late_init.exit

omap2xxx_clkt_vps_late_init.exit:                 ; preds = %if.else.i, %do.end.i
  %call.i17 = tail call i32 @omap2xxx_clk_get_core_rate() #7
  %3 = load ptr, ptr @rate_table, align 4
  %mpu_speed16.i = getelementptr inbounds %struct.prcm_config, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mpu_speed16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mpu_speed16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not17.i = icmp eq i32 %5, 0
  br i1 %tobool.not17.i, label %omap2xxx_clkt_vps_late_init.exit.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge, label %for.body.lr.ph.i

omap2xxx_clkt_vps_late_init.exit.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge: ; preds = %omap2xxx_clkt_vps_late_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap2xxx_clkt_vps_check_bootloader_rates.exit

for.body.lr.ph.i:                                 ; preds = %omap2xxx_clkt_vps_late_init.exit
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @cpu_mask to i32))
  %6 = load i16, ptr @cpu_mask, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %prcm.018.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.prcm_config, ptr %prcm.018.i, i32 0, i32 11
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %flags.i, align 4
  %and15.i = and i16 %8, %6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and15.i)
  %tobool2.not.i = icmp eq i16 %and15.i, 0
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %9 = ptrtoint ptr %prcm.018.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prcm.018.i, align 4
  %11 = load i32, ptr @sys_ck_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp.not.i = icmp eq i32 %10, %11
  br i1 %cmp.not.i, label %if.end5.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %if.end.i
  %dpll_speed.i = getelementptr inbounds %struct.prcm_config, ptr %prcm.018.i, i32 0, i32 1
  %12 = ptrtoint ptr %dpll_speed.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dpll_speed.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call.i17)
  %cmp6.not.i = icmp ugt i32 %13, %call.i17
  br i1 %cmp6.not.i, label %if.end5.i.for.inc.i_crit_edge, label %if.end5.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge

if.end5.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap2xxx_clkt_vps_check_bootloader_rates.exit

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.prcm_config, ptr %prcm.018.i, i32 1
  %mpu_speed.i = getelementptr %struct.prcm_config, ptr %prcm.018.i, i32 1, i32 2
  %14 = ptrtoint ptr %mpu_speed.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mpu_speed.i, align 4
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %for.inc.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap2xxx_clkt_vps_check_bootloader_rates.exit

omap2xxx_clkt_vps_check_bootloader_rates.exit:    ; preds = %for.inc.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge, %if.end5.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge, %omap2xxx_clkt_vps_late_init.exit.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge
  %prcm.0.lcssa.i = phi ptr [ %3, %omap2xxx_clkt_vps_late_init.exit.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge ], [ %incdec.ptr.i, %for.inc.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge ], [ %prcm.018.i, %if.end5.i.omap2xxx_clkt_vps_check_bootloader_rates.exit_crit_edge ]
  store ptr %prcm.0.lcssa.i, ptr @curr_prcm_set, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 76) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %omap2xxx_clkt_vps_check_bootloader_rates.exit.cleanup_crit_edge, label %if.end

omap2xxx_clkt_vps_check_bootloader_rates.exit.cleanup_crit_edge: ; preds = %omap2xxx_clkt_vps_check_bootloader_rates.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %omap2xxx_clkt_vps_check_bootloader_rates.exit
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.6, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @virt_prcm_set_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %20 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %num_parents, align 4
  %init2 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init, ptr %init2, align 8
  %call4 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call ptr (ptr, ptr, ptr, ...) @clkdev_create(ptr noundef %call4, ptr noundef nonnull @.str.9, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %omap2xxx_clkt_vps_check_bootloader_rates.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdev_create(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 117, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap2_select_table_rate._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap2_select_table_rate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 200, i32 20}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 202, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 231, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 239, i32 14}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 248, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @omap2xxx_clkt_vps_init._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap2xxx_clkt_vps_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 253, i32 21}
!21 = !{ptr @curr_prcm_set, !22, !"curr_prcm_set", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 42, i32 27}
!23 = !{ptr @rate_table, !24, !"rate_table", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 43, i32 27}
!25 = !{ptr @sys_ck_rate, !26, !"sys_ck_rate", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 50, i32 22}
!27 = !{ptr @virt_prcm_set_ops, !28, !"virt_prcm_set_ops", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/clkt2xxx_virt_prcm_set.c", i32 213, i32 29}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 607031, i64 607092}
!39 = !{i64 609763}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 610048}
