; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-iproc-pll.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_pll = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.iproc_clk = type { %struct.clk_hw, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.iproc_pll_vco_param = type { i32, i32, i32, i32 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clk/bcm/clk-iproc-pll.c\00", [32 x i8] zeroinitializer }, align 32
@iproc_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_pll_enable, ptr @iproc_pll_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_pll_recalc_rate, ptr null, ptr @iproc_pll_determine_rate, ptr null, ptr null, ptr @iproc_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@iproc_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @iproc_clk_enable, ptr @iproc_clk_disable, ptr null, ptr null, ptr null, ptr null, ptr @iproc_clk_recalc_rate, ptr null, ptr @iproc_clk_determine_rate, ptr null, ptr null, ptr @iproc_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pll_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: pll: %s has invalid rate: %lu\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pll_set_rate\00", [19 x i8] zeroinitializer }, align 32
@pll_set_rate._entry_ptr = internal global ptr @pll_set_rate._entry, section ".printk_index", align 4
@pll_set_rate._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: pll: %s has invalid kp\0A\00", [34 x i8] zeroinitializer }, align 32
@pll_set_rate._entry_ptr.6 = internal global ptr @pll_set_rate._entry.4, section ".printk_index", align 4
@pll_set_rate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: pll: %s fails to enable\0A\00", [33 x i8] zeroinitializer }, align 32
@pll_set_rate._entry_ptr.9 = internal global ptr @pll_set_rate._entry.7, section ".printk_index", align 4
@pll_set_rate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: pll: %s failed to lock\0A\00", [34 x i8] zeroinitializer }, align 32
@pll_set_rate._entry_ptr.12 = internal global ptr @pll_set_rate._entry.10, section ".printk_index", align 4
@kp_table = internal constant { [3 x [8 x i32]], [32 x i8] } { [3 x [8 x i32]] [[8 x i32] [i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 9, i32 10], [8 x i32] [i32 4, i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9], [8 x i32] [i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10]], [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 740, i32 6 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"iproc_pll_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 577, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 814, i32 45 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"iproc_clk_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 699, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 347, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 354, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 360, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 430, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"kp_table\00", align 1
@___asan_gen_.53 = private constant [35 x i8] c"../drivers/clk/bcm/clk-iproc-pll.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 47, i32 27 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @pll_set_rate._entry, ptr @pll_set_rate._entry.10, ptr @pll_set_rate._entry.4, ptr @pll_set_rate._entry.7, ptr @pll_set_rate._entry_ptr, ptr @pll_set_rate._entry_ptr.12, ptr @pll_set_rate._entry_ptr.6, ptr @pll_set_rate._entry_ptr.9, ptr @.str, ptr @iproc_pll_ops, ptr @.str.1, ptr @iproc_clk_ops, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @kp_table], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_set_rate._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_set_rate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_set_rate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kp_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef %pll_ctrl, ptr noundef %vco, i32 noundef %num_vco_entries, ptr noundef %clk_ctrl, i32 noundef %num_clks) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #8
  %1 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !38
  %tobool.not = icmp eq ptr %pll_ctrl, null
  br i1 %tobool.not, label %do.end, label %lor.lhs.false.critedge, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #8
  br label %cleanup463

lor.lhs.false.critedge:                           ; preds = %entry
  %tobool23.not = icmp eq ptr %clk_ctrl, null
  br i1 %tobool23.not, label %do.end41, label %if.end57, !prof !39

do.end41:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #8
  br label %cleanup463

if.end57:                                         ; preds = %lor.lhs.false.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #11
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %do.end77, label %if.end8.i.i, !prof !39

do.end77:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 744, i32 noundef 9, ptr noundef null) #8
  br label %cleanup463

if.end8.i.i:                                      ; preds = %if.end57
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks, i32 4) #8
  %4 = extractvalue { i32, i1 } %3, 1
  %5 = extractvalue { i32, i1 } %3, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %5, i32 4) #8
  %retval.0.i = select i1 %4, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #12
  %tobool97.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool97.not, label %do.end115, label %if.end131.critedge, !prof !39

do.end115:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 748, i32 noundef 9, ptr noundef null) #8
  br label %err_clk_data

if.end131.critedge:                               ; preds = %if.end8.i.i
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %num_clks, ptr %call9.i.i, align 128
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_clks, i32 20) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end131.critedge.do.end152_crit_edge, label %if.end7.i.i, !prof !39

if.end131.critedge.do.end152_crit_edge:           ; preds = %if.end131.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end152

if.end7.i.i:                                      ; preds = %if.end131.critedge
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #12
  %tobool134.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool134.not, label %if.end7.i.i.do.end152_crit_edge, label %if.end168.critedge, !prof !39

if.end7.i.i.do.end152_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end152

do.end152:                                        ; preds = %if.end7.i.i.do.end152_crit_edge, %if.end131.critedge.do.end152_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 753, i32 noundef 9, ptr noundef null) #8
  br label %err_clks

if.end168.critedge:                               ; preds = %if.end7.i.i
  %call169 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %control_base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call169, ptr %control_base, align 4
  %tobool172.not = icmp eq ptr %call169, null
  br i1 %tobool172.not, label %do.end190, label %if.end206.critedge, !prof !39

do.end190:                                        ; preds = %if.end168.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 757, i32 noundef 9, ptr noundef null) #8
  br label %err_pll_iomap

if.end206.critedge:                               ; preds = %if.end168.critedge
  %call207 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #8
  %pwr_base = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %pwr_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call207, ptr %pwr_base, align 8
  %12 = ptrtoint ptr %pll_ctrl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pll_ctrl, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool208.not = icmp eq i32 %and, 0
  br i1 %tobool208.not, label %if.end206.critedge.if.end248_crit_edge, label %if.then209

if.end206.critedge.if.end248_crit_edge:           ; preds = %if.end206.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then209:                                       ; preds = %if.end206.critedge
  %call210 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 2) #8
  %asiu_base = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %asiu_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call210, ptr %asiu_base, align 4
  %tobool213.not = icmp eq ptr %call210, null
  br i1 %tobool213.not, label %do.end231, label %if.then209.if.end248_crit_edge, !prof !39

if.then209.if.end248_crit_edge:                   ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

do.end231:                                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 766, i32 noundef 9, ptr noundef null) #8
  br label %err_asiu_iomap

if.end248:                                        ; preds = %if.then209.if.end248_crit_edge, %if.end206.critedge.if.end248_crit_edge
  %15 = ptrtoint ptr %pll_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_ctrl, align 4
  %and250 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.else, label %if.then252

if.then252:                                       ; preds = %if.end248
  %call253 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 2) #8
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call253, ptr %call7.i.i, align 8
  %tobool255.not = icmp eq ptr %call253, null
  br i1 %tobool255.not, label %if.then252.err_status_iomap_crit_edge, label %if.then252.if.end260_crit_edge

if.then252.if.end260_crit_edge:                   ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then252.err_status_iomap_crit_edge:            ; preds = %if.then252
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_status_iomap

if.else:                                          ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %control_base, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %call7.i.i, align 8
  br label %if.end260

if.end260:                                        ; preds = %if.else, %if.then252.if.end260_crit_edge
  %ctrl = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pll_ctrl, ptr %ctrl, align 8
  %pll261 = getelementptr inbounds %struct.iproc_clk, ptr %call8.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %pll261 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i, ptr %pll261, align 4
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %node, align 4
  %25 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %26 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @iproc_pll_ops, ptr %ops, align 4
  %flags263 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %27 = ptrtoint ptr %flags263 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %flags263, align 4
  %call264 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #8
  %28 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call264, ptr %parent_name, align 4
  %tobool265.not = icmp eq ptr %call264, null
  %parent_name. = select i1 %tobool265.not, ptr null, ptr %parent_name
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %29 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %parent_name., ptr %parent_names, align 4
  %tobool266.not = icmp ne ptr %call264, null
  %conv = zext i1 %tobool266.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %30 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %num_parents, align 4
  %init268 = getelementptr inbounds %struct.clk_hw, ptr %call8.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %init268 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %init, ptr %init268, align 8
  %tobool269.not = icmp eq ptr %vco, null
  br i1 %tobool269.not, label %if.end260.if.end272_crit_edge, label %if.then270

if.end260.if.end272_crit_edge:                    ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end272

if.then270:                                       ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  %num_vco_entries271 = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %num_vco_entries271 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %num_vco_entries, ptr %num_vco_entries271, align 8
  %vco_param = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %vco_param to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vco, ptr %vco_param, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then270, %if.end260.if.end272_crit_edge
  %34 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctrl, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %and.i = and i32 %37, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end272.iproc_pll_sw_cfg.exit_crit_edge, label %if.then.i

if.end272.iproc_pll_sw_cfg.exit_crit_edge:        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_sw_cfg.exit

if.then.i:                                        ; preds = %if.end272
  %38 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %control_base, align 4
  %sw_ctrl.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %35, i32 0, i32 5
  %40 = ptrtoint ptr %sw_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sw_ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %39, i32 %41
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  %43 = call i32 @llvm.bswap.i32(i32 %42) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !41
  %shift.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %35, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shift.i, align 4
  %shl.i = shl nuw i32 1, %45
  %or.i = or i32 %shl.i, %43
  %46 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %control_base, align 4
  %48 = ptrtoint ptr %sw_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sw_ctrl.i, align 4
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  call void @arm_heavy_mb() #8
  %52 = call i32 @llvm.bswap.i32(i32 %or.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %49
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %52) #8, !srcloc !43
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %51, align 4
  %and.i.i = and i32 %54, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.iproc_pll_sw_cfg.exit_crit_edge, label %land.rhs.i.i

if.then.i.iproc_pll_sw_cfg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_sw_cfg.exit

land.rhs.i.i:                                     ; preds = %if.then.i
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call7.i.i, align 8
  %cmp.i.i559 = icmp eq ptr %56, %47
  br i1 %cmp.i.i559, label %land.rhs.i.i.if.then.i.i560_crit_edge, label %lor.rhs.i.i

land.rhs.i.i.if.then.i.i560_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i560

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %57 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %control_base, align 4
  %cmp2.i.i = icmp eq ptr %58, %47
  br i1 %cmp2.i.i, label %lor.rhs.i.i.if.then.i.i560_crit_edge, label %lor.rhs.i.i.iproc_pll_sw_cfg.exit_crit_edge, !prof !39

lor.rhs.i.i.iproc_pll_sw_cfg.exit_crit_edge:      ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_sw_cfg.exit

lor.rhs.i.i.if.then.i.i560_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i560

if.then.i.i560:                                   ; preds = %lor.rhs.i.i.if.then.i.i560_crit_edge, %land.rhs.i.i.if.then.i.i560_crit_edge
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_sw_cfg.exit

iproc_pll_sw_cfg.exit:                            ; preds = %if.then.i.i560, %lor.rhs.i.i.iproc_pll_sw_cfg.exit_crit_edge, %if.then.i.iproc_pll_sw_cfg.exit_crit_edge, %if.end272.iproc_pll_sw_cfg.exit_crit_edge
  %call274 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call8.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call274)
  %tobool276.not = icmp eq i32 %call274, 0
  br i1 %tobool276.not, label %if.end308.critedge, label %do.end292, !prof !45

do.end292:                                        ; preds = %iproc_pll_sw_cfg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 802, i32 noundef 9, ptr noundef null) #8
  br label %err_pll_register

if.end308.critedge:                               ; preds = %iproc_pll_sw_cfg.exit
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call9.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i, ptr %hws, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num_clks)
  %cmp577 = icmp ugt i32 %num_clks, 1
  br i1 %cmp577, label %if.end308.critedge.for.body_crit_edge, label %if.end308.critedge.for.end_crit_edge

if.end308.critedge.for.end_crit_edge:             ; preds = %if.end308.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end308.critedge.for.body_crit_edge:            ; preds = %if.end308.critedge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end308.critedge.for.body_crit_edge
  %i.0578 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %if.end308.critedge.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %61 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !38
  %62 = call ptr @memset(ptr %init, i32 0, i32 28)
  %63 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node, align 4
  %65 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %parent_name, align 4
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.0578) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool315.not = icmp sgt i32 %call.i, -1
  br i1 %tobool315.not, label %if.end347, label %for.body.cleanup.thread_crit_edge, !prof !45

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

if.end347:                                        ; preds = %for.body
  %arrayidx348 = getelementptr %struct.iproc_clk, ptr %call8.i.i, i32 %i.0578
  %pll349 = getelementptr %struct.iproc_clk, ptr %call8.i.i, i32 %i.0578, i32 1
  %66 = ptrtoint ptr %pll349 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i, ptr %pll349, align 4
  %arrayidx350 = getelementptr %struct.iproc_clk_ctrl, ptr %clk_ctrl, i32 %i.0578
  %ctrl351 = getelementptr %struct.iproc_clk, ptr %call8.i.i, i32 %i.0578, i32 2
  %67 = ptrtoint ptr %ctrl351 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %arrayidx350, ptr %ctrl351, align 4
  %68 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk_name, align 4
  %70 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %init, align 4
  %71 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @iproc_clk_ops, ptr %ops, align 4
  %72 = ptrtoint ptr %flags263 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %flags263, align 4
  %73 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %parent_name, align 4
  %tobool355.not = icmp eq ptr %74, null
  %parent_name.473 = select i1 %tobool355.not, ptr null, ptr %parent_name
  %75 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %parent_name.473, ptr %parent_names, align 4
  %tobool361.not = icmp ne ptr %74, null
  %conv363 = zext i1 %tobool361.not to i8
  %76 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv363, ptr %num_parents, align 4
  %init366 = getelementptr inbounds %struct.clk_hw, ptr %arrayidx348, i32 0, i32 2
  %77 = ptrtoint ptr %init366 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %init, ptr %init366, align 4
  %call368 = call i32 @clk_hw_register(ptr noundef null, ptr noundef %arrayidx348) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call368)
  %tobool370.not = icmp eq i32 %call368, 0
  br i1 %tobool370.not, label %for.inc, label %if.end347.cleanup.thread_crit_edge, !prof !45

if.end347.cleanup.thread_crit_edge:               ; preds = %if.end347
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end347.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %.sink = phi i32 [ 816, %for.body.cleanup.thread_crit_edge ], [ 831, %if.end347.cleanup.thread_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  br label %err_clk_register

for.inc:                                          ; preds = %if.end347
  %arrayidx405 = getelementptr %struct.clk_hw_onecell_data, ptr %call9.i.i, i32 0, i32 1, i32 %i.0578
  %78 = ptrtoint ptr %arrayidx405 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx348, ptr %arrayidx405, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  %inc = add nuw i32 %i.0578, 1
  %exitcond.not = icmp eq i32 %inc, %num_clks
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end308.critedge.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 1, %if.end308.critedge.for.end_crit_edge ], [ %num_clks, %for.inc.for.end_crit_edge ]
  %call406 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call406)
  %tobool408.not = icmp eq i32 %call406, 0
  br i1 %tobool408.not, label %for.end.cleanup463_crit_edge, label %do.end424, !prof !45

for.end.cleanup463_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup463

do.end424:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 838, i32 noundef 9, ptr noundef null) #8
  br label %err_clk_register

err_clk_register:                                 ; preds = %do.end424, %cleanup.thread
  %i.0575 = phi i32 [ %i.0578, %cleanup.thread ], [ %i.0.lcssa, %do.end424 ]
  %dec579 = add i32 %i.0575, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec579)
  %cmp441580 = icmp sgt i32 %dec579, -1
  br i1 %cmp441580, label %err_clk_register.while.body_crit_edge, label %err_clk_register.err_pll_register_crit_edge

err_clk_register.err_pll_register_crit_edge:      ; preds = %err_clk_register
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pll_register

err_clk_register.while.body_crit_edge:            ; preds = %err_clk_register
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_clk_register.while.body_crit_edge
  %dec581 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec579, %err_clk_register.while.body_crit_edge ]
  %arrayidx444 = getelementptr %struct.clk_hw_onecell_data, ptr %call9.i.i, i32 0, i32 1, i32 %dec581
  %79 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx444, align 4
  call void @clk_hw_unregister(ptr noundef %80) #8
  %dec = add nsw i32 %dec581, -1
  %cmp441 = icmp sgt i32 %dec581, 0
  br i1 %cmp441, label %while.body.while.body_crit_edge, label %while.body.err_pll_register_crit_edge

while.body.err_pll_register_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_pll_register

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

err_pll_register:                                 ; preds = %while.body.err_pll_register_crit_edge, %err_clk_register.err_pll_register_crit_edge, %do.end292
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call7.i.i, align 8
  %83 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %control_base, align 4
  %cmp447.not = icmp eq ptr %82, %84
  br i1 %cmp447.not, label %err_pll_register.err_status_iomap_crit_edge, label %if.then449

err_pll_register.err_status_iomap_crit_edge:      ; preds = %err_pll_register
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_status_iomap

if.then449:                                       ; preds = %err_pll_register
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef %82) #8
  br label %err_status_iomap

err_status_iomap:                                 ; preds = %if.then449, %err_pll_register.err_status_iomap_crit_edge, %if.then252.err_status_iomap_crit_edge
  %asiu_base452 = getelementptr inbounds %struct.iproc_pll, ptr %call7.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %asiu_base452 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %asiu_base452, align 4
  %tobool453.not = icmp eq ptr %86, null
  br i1 %tobool453.not, label %err_status_iomap.err_asiu_iomap_crit_edge, label %if.then454

err_status_iomap.err_asiu_iomap_crit_edge:        ; preds = %err_status_iomap
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_asiu_iomap

if.then454:                                       ; preds = %err_status_iomap
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %86) #8
  br label %err_asiu_iomap

err_asiu_iomap:                                   ; preds = %if.then454, %err_status_iomap.err_asiu_iomap_crit_edge, %do.end231
  %87 = ptrtoint ptr %pwr_base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pwr_base, align 8
  %tobool458.not = icmp eq ptr %88, null
  br i1 %tobool458.not, label %err_asiu_iomap.if.end461_crit_edge, label %if.then459

err_asiu_iomap.if.end461_crit_edge:               ; preds = %err_asiu_iomap
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end461

if.then459:                                       ; preds = %err_asiu_iomap
  call void @__sanitizer_cov_trace_pc() #10
  call void @iounmap(ptr noundef nonnull %88) #8
  br label %if.end461

if.end461:                                        ; preds = %if.then459, %err_asiu_iomap.if.end461_crit_edge
  %89 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %control_base, align 4
  call void @iounmap(ptr noundef %90) #8
  br label %err_pll_iomap

err_pll_iomap:                                    ; preds = %if.end461, %do.end190
  call void @kfree(ptr noundef nonnull %call8.i.i) #8
  br label %err_clks

err_clks:                                         ; preds = %err_pll_iomap, %do.end152
  call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %err_clk_data

err_clk_data:                                     ; preds = %err_clks, %do.end115
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup463

cleanup463:                                       ; preds = %err_clk_data, %for.end.cleanup463_crit_edge, %do.end77, %do.end41, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pll_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1, align 4
  tail call fastcc void @__pll_enable(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_pll_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1, align 4
  %ctrl2 = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  %asiu_base.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %asiu_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %asiu_base.i, align 4
  %asiu.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %asiu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %asiu.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !46
  %en_shift.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %en_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_shift.i, align 4
  %shl.i = shl nuw i32 1, %13
  %neg.i = xor i32 %shl.i, -1
  %and4.i = and i32 %11, %neg.i
  %14 = ptrtoint ptr %asiu_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %asiu_base.i, align 4
  %16 = ptrtoint ptr %asiu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asiu.i, align 4
  %18 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #8, !srcloc !43
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  %and.i.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %land.rhs.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %cmp.i.i = icmp eq ptr %24, %15
  br i1 %cmp.i.i, label %land.rhs.i.i.if.then.i.i_crit_edge, label %lor.rhs.i.i

land.rhs.i.i.if.then.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %control_base.i.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %control_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control_base.i.i, align 4
  %cmp2.i.i = icmp eq ptr %26, %15
  br i1 %cmp2.i.i, label %lor.rhs.i.i.if.then.i.i_crit_edge, label %lor.rhs.i.i.if.end.i_crit_edge, !prof !39

lor.rhs.i.i.if.end.i_crit_edge:                   ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

lor.rhs.i.i.if.then.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.rhs.i.i.if.then.i.i_crit_edge, %land.rhs.i.i.if.then.i.i_crit_edge
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i.i, %lor.rhs.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %and9.i = and i32 %29, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then11.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then11.i:                                      ; preds = %if.end.i
  %control_base.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %control_base.i, align 4
  %aon.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %aon.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %aon.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %31, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !40
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !47
  %pwr_width.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %pwr_width.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pwr_width.i, align 4
  %notmask90.i = shl nsw i32 -1, %37
  %sub.i = xor i32 %notmask90.i, -1
  %pwr_shift.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %pwr_shift.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pwr_shift.i, align 4
  %shl22.i = shl i32 %sub.i, %39
  %or.i = or i32 %shl22.i, %35
  %40 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %control_base.i, align 4
  %42 = ptrtoint ptr %aon.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aon.i, align 4
  %44 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %add.ptr.i92.i = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92.i, i32 %46) #8, !srcloc !43
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %45, align 4
  %and.i93.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93.i)
  %tobool.not.i94.i = icmp eq i32 %and.i93.i, 0
  br i1 %tobool.not.i94.i, label %if.then11.i.if.end26.i_crit_edge, label %land.rhs.i96.i

if.then11.i.if.end26.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

land.rhs.i96.i:                                   ; preds = %if.then11.i
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %cmp.i95.i = icmp eq ptr %50, %41
  br i1 %cmp.i95.i, label %land.rhs.i96.i.if.then.i100.i_crit_edge, label %lor.rhs.i99.i

land.rhs.i96.i.if.then.i100.i_crit_edge:          ; preds = %land.rhs.i96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i100.i

lor.rhs.i99.i:                                    ; preds = %land.rhs.i96.i
  %51 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %control_base.i, align 4
  %cmp2.i98.i = icmp eq ptr %52, %41
  br i1 %cmp2.i98.i, label %lor.rhs.i99.i.if.then.i100.i_crit_edge, label %lor.rhs.i99.i.if.end26.i_crit_edge, !prof !39

lor.rhs.i99.i.if.end26.i_crit_edge:               ; preds = %lor.rhs.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

lor.rhs.i99.i.if.then.i100.i_crit_edge:           ; preds = %lor.rhs.i99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i100.i

if.then.i100.i:                                   ; preds = %lor.rhs.i99.i.if.then.i100.i_crit_edge, %land.rhs.i96.i.if.then.i100.i_crit_edge
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then.i100.i, %lor.rhs.i99.i.if.end26.i_crit_edge, %if.then11.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  %pwr_base.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %pwr_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pwr_base.i, align 4
  %tobool27.not.i = icmp eq ptr %55, null
  br i1 %tobool27.not.i, label %if.end26.i.cleanup_crit_edge, label %if.then28.i

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28.i:                                      ; preds = %if.end26.i
  %aon32.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1
  %56 = ptrtoint ptr %aon32.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %aon32.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %55, i32 %57
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #8, !srcloc !40
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !48
  %iso_shift.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 3
  %60 = ptrtoint ptr %iso_shift.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iso_shift.i, align 4
  %shl39.i = shl nuw i32 1, %61
  %or40.i = or i32 %shl39.i, %59
  %62 = ptrtoint ptr %pwr_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pwr_base.i, align 4
  %64 = ptrtoint ptr %aon32.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %aon32.i, align 4
  %66 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctrl2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %68 = tail call i32 @llvm.bswap.i32(i32 %or40.i) #8
  %add.ptr.i103.i = getelementptr i8, ptr %63, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103.i, i32 %68) #8, !srcloc !43
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %67, align 4
  %and.i104.i = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i104.i)
  %tobool.not.i105.i = icmp eq i32 %and.i104.i, 0
  br i1 %tobool.not.i105.i, label %if.then28.i.iproc_pll_write.exit112.i_crit_edge, label %land.rhs.i107.i

if.then28.i.iproc_pll_write.exit112.i_crit_edge:  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit112.i

land.rhs.i107.i:                                  ; preds = %if.then28.i
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %cmp.i106.i = icmp eq ptr %72, %63
  br i1 %cmp.i106.i, label %land.rhs.i107.i.if.then.i111.i_crit_edge, label %lor.rhs.i110.i

land.rhs.i107.i.if.then.i111.i_crit_edge:         ; preds = %land.rhs.i107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i111.i

lor.rhs.i110.i:                                   ; preds = %land.rhs.i107.i
  %control_base.i108.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %control_base.i108.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %control_base.i108.i, align 4
  %cmp2.i109.i = icmp eq ptr %74, %63
  br i1 %cmp2.i109.i, label %lor.rhs.i110.i.if.then.i111.i_crit_edge, label %lor.rhs.i110.i.iproc_pll_write.exit112.i_crit_edge, !prof !39

lor.rhs.i110.i.iproc_pll_write.exit112.i_crit_edge: ; preds = %lor.rhs.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit112.i

lor.rhs.i110.i.if.then.i111.i_crit_edge:          ; preds = %lor.rhs.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i111.i

if.then.i111.i:                                   ; preds = %lor.rhs.i110.i.if.then.i111.i_crit_edge, %land.rhs.i107.i.if.then.i111.i_crit_edge
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit112.i

iproc_pll_write.exit112.i:                        ; preds = %if.then.i111.i, %lor.rhs.i110.i.iproc_pll_write.exit112.i_crit_edge, %if.then28.i.iproc_pll_write.exit112.i_crit_edge
  %pwr_width45.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 1
  %76 = ptrtoint ptr %pwr_width45.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pwr_width45.i, align 4
  %notmask.i = shl nsw i32 -1, %77
  %sub47.i = xor i32 %notmask.i, -1
  %pwr_shift49.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 1, i32 2
  %78 = ptrtoint ptr %pwr_shift49.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pwr_shift49.i, align 4
  %shl50.i = shl i32 %sub47.i, %79
  %neg51.i = xor i32 %shl50.i, -1
  %and52.i = and i32 %or40.i, %neg51.i
  %80 = ptrtoint ptr %pwr_base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pwr_base.i, align 4
  %82 = ptrtoint ptr %aon32.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %aon32.i, align 4
  %84 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctrl2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %86 = tail call i32 @llvm.bswap.i32(i32 %and52.i) #8
  %add.ptr.i114.i = getelementptr i8, ptr %81, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %86) #8, !srcloc !43
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %85, align 4
  %and.i115.i = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115.i)
  %tobool.not.i116.i = icmp eq i32 %and.i115.i, 0
  br i1 %tobool.not.i116.i, label %iproc_pll_write.exit112.i.cleanup_crit_edge, label %land.rhs.i118.i

iproc_pll_write.exit112.i.cleanup_crit_edge:      ; preds = %iproc_pll_write.exit112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i118.i:                                  ; preds = %iproc_pll_write.exit112.i
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %cmp.i117.i = icmp eq ptr %90, %81
  br i1 %cmp.i117.i, label %land.rhs.i118.i.if.then.i122.i_crit_edge, label %lor.rhs.i121.i

land.rhs.i118.i.if.then.i122.i_crit_edge:         ; preds = %land.rhs.i118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i122.i

lor.rhs.i121.i:                                   ; preds = %land.rhs.i118.i
  %control_base.i119.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %91 = ptrtoint ptr %control_base.i119.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %control_base.i119.i, align 4
  %cmp2.i120.i = icmp eq ptr %92, %81
  br i1 %cmp2.i120.i, label %lor.rhs.i121.i.if.then.i122.i_crit_edge, label %lor.rhs.i121.i.cleanup_crit_edge, !prof !39

lor.rhs.i121.i.cleanup_crit_edge:                 ; preds = %lor.rhs.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i121.i.if.then.i122.i_crit_edge:          ; preds = %lor.rhs.i121.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i122.i

if.then.i122.i:                                   ; preds = %lor.rhs.i121.i.if.then.i122.i_crit_edge, %land.rhs.i118.i.if.then.i122.i_crit_edge
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.then.i122.i, %lor.rhs.i121.i.cleanup_crit_edge, %iproc_pll_write.exit112.i.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1, align 4
  %ctrl2 = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %status = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %shift = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %shl = shl nuw i32 1, %11
  %and = and i32 %shl, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control_base, align 4
  %ndiv_int12 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %ndiv_int12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ndiv_int12, align 4
  %add.ptr14 = getelementptr i8, ptr %13, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #8, !srcloc !40
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  %shift19 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %shift19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shift19, align 4
  %shr = lshr i32 %17, %19
  %width = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %21
  %sub = xor i32 %notmask, -1
  %and22 = and i32 %shr, %sub
  %conv = zext i32 %and22 to i64
  %shl23 = shl nuw nsw i64 %conv, 20
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %3, align 4
  %and24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool.not = icmp eq i32 %and24, 0
  br i1 %tobool.not, label %if.end9.if.end44_crit_edge, label %if.then25

if.end9.if.end44_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then25:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %control_base, align 4
  %ndiv_frac29 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %ndiv_frac29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ndiv_frac29, align 4
  %add.ptr31 = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #8, !srcloc !40
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %shift36 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %shift36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift36, align 4
  %shr37 = lshr i32 %29, %31
  %width39 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %width39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %width39, align 4
  %notmask102 = shl nsw i32 -1, %33
  %sub41 = xor i32 %notmask102, -1
  %and42 = and i32 %shr37, %sub41
  %conv43 = zext i32 %and42 to i64
  %add = add nuw nsw i64 %shl23, %conv43
  br label %if.end44

if.end44:                                         ; preds = %if.then25, %if.end9.if.end44_crit_edge
  %ndiv.0 = phi i64 [ %add, %if.then25 ], [ %shl23, %if.end9.if.end44_crit_edge ]
  %34 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %control_base, align 4
  %pdiv48 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %pdiv48 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pdiv48, align 4
  %add.ptr50 = getelementptr i8, ptr %35, i32 %37
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #8, !srcloc !40
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  %shift55 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %shift55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %shift55, align 4
  %shr56 = lshr i32 %39, %41
  %width58 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %3, i32 0, i32 8, i32 2
  %42 = ptrtoint ptr %width58 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %width58, align 4
  %notmask101 = shl nsw i32 -1, %43
  %sub60 = xor i32 %notmask101, -1
  %and61 = and i32 %shr56, %sub60
  %conv62 = zext i32 %parent_rate to i64
  %mul = mul i64 %ndiv.0, %conv62
  %shr63 = lshr i64 %mul, 20
  %conv64 = trunc i64 %shr63 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %cmp65 = icmp eq i32 %and61, 0
  br i1 %cmp65, label %if.then67, label %if.else

if.then67:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %mul68 = shl i32 %conv64, 1
  br label %cleanup

if.else:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  %div = udiv i32 %conv64, %and61
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then67, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %mul68, %if.then67 ], [ %div, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pll_determine_rate(ptr nocapture noundef readonly %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1, align 4
  %ctrl2 = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup34_crit_edge, label %lor.lhs.false

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

lor.lhs.false:                                    ; preds = %entry
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %best_parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup34_crit_edge, label %if.end

lor.lhs.false.cleanup34_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %3, align 4
  %and = and i32 %9, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end12, label %if.then4

if.then4:                                         ; preds = %if.end
  %div.i = udiv i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %tobool.not.i = icmp ugt i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 255
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then4.cleanup34_crit_edge, label %if.end9

if.then4.cleanup34_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %div.i to i64
  %conv2.i = zext i32 %5 to i64
  %conv3.i = zext i32 %7 to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv3.i
  %sub.i = sub nsw i64 %conv2.i, %mul.i
  %shl.i = shl nsw i64 %sub.i, 20
  %div442.i = lshr i32 %7, 1
  %conv5.i = zext i32 %div442.i to i64
  %add.i = add i64 %shl.i, %conv5.i
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %conv3.i) #8
  %mul12.i = mul i32 %div.i, %7
  %conv14.i = and i64 %call.i, 4294967295
  %mul16.i = mul nuw i64 %conv14.i, %conv3.i
  %shr.i = lshr i64 %mul16.i, 20
  %10 = trunc i64 %shr.i to i32
  %conv20.i = add i32 %mul12.i, %10
  br label %cleanup34.sink.split

if.end12:                                         ; preds = %if.end
  %vco_param13 = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %vco_param13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vco_param13, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %if.end12.cleanup34_crit_edge, label %for.cond.preheader

if.end12.cleanup34_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup34

for.cond.preheader:                               ; preds = %if.end12
  %num_vco_entries = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %num_vco_entries to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_vco_entries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp1764.not = icmp eq i32 %14, 0
  br i1 %cmp1764.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %best_idx.067 = phi i32 [ %best_idx.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %best_diff.066 = phi i32 [ %18, %for.inc.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %i.065 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.iproc_pll_vco_param, ptr %12, i32 %i.065
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %5, %16
  %17 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %best_diff.066)
  %cmp24.not = icmp ugt i32 %17, %best_diff.066
  %best_idx.1 = select i1 %cmp24.not, i32 %best_idx.067, i32 %i.065
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %16)
  %cmp27 = icmp eq i32 %5, %16
  br i1 %cmp27, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %best_diff.066)
  %inc = add nuw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, %14
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %best_idx.2 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %best_idx.1, %for.body.for.end_crit_edge ], [ %best_idx.1, %for.inc.for.end_crit_edge ]
  %arrayidx31 = getelementptr %struct.iproc_pll_vco_param, ptr %12, i32 %best_idx.2
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx31, align 4
  br label %cleanup34.sink.split

cleanup34.sink.split:                             ; preds = %for.end, %if.end9
  %conv20.i.sink = phi i32 [ %conv20.i, %if.end9 ], [ %20, %for.end ]
  %21 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv20.i.sink, ptr %req, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %cleanup34.sink.split, %if.end12.cleanup34_crit_edge, %if.then4.cleanup34_crit_edge, %lor.lhs.false.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.1 = phi i32 [ -22, %lor.lhs.false.cleanup34_crit_edge ], [ -22, %entry.cleanup34_crit_edge ], [ -22, %if.end12.cleanup34_crit_edge ], [ -22, %if.then4.cleanup34_crit_edge ], [ 0, %cleanup34.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_pll_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pll1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll1, align 4
  %ctrl2 = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ctrl2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %div.i = udiv i32 %rate, %parent_rate
  call void @__sanitizer_cov_trace_cmp4(i32 %parent_rate, i32 %rate)
  %tobool.not.i = icmp ugt i32 %parent_rate, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 255
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.cleanup_crit_edge, label %pll_calc_param.exit.thread

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pll_calc_param.exit.thread:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i32 %div.i to i64
  %conv2.i = zext i32 %rate to i64
  %conv3.i = zext i32 %parent_rate to i64
  %mul.i = mul nuw nsw i64 %conv.i, %conv3.i
  %sub.i = sub nsw i64 %conv2.i, %mul.i
  %shl.i = shl nsw i64 %sub.i, 20
  %div442.i = lshr i32 %parent_rate, 1
  %conv5.i = zext i32 %div442.i to i64
  %add.i = add i64 %shl.i, %conv5.i
  %call.i = tail call i64 @div64_u64(i64 noundef %add.i, i64 noundef %conv3.i) #8
  %conv9.i = trunc i64 %call.i to i32
  %mul12.i = mul i32 %div.i, %parent_rate
  %conv14.i = and i64 %call.i, 4294967295
  %mul16.i = mul nuw i64 %conv14.i, %conv3.i
  %shr.i = lshr i64 %mul16.i, 20
  %6 = trunc i64 %shr.i to i32
  %conv20.i = add i32 %mul12.i, %6
  br label %if.end9

if.else:                                          ; preds = %entry
  %num_vco_entries.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %num_vco_entries.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_vco_entries.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp12.not.i = icmp eq i32 %8, 0
  br i1 %cmp12.not.i, label %if.else.cleanup_crit_edge, label %for.body.lr.ph.i

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.else
  %vco_param.i = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %vco_param.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vco_param.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iproc_pll_vco_param, ptr %10, i32 %i.013.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %rate)
  %cmp1.i = icmp eq i32 %12, %rate
  br i1 %cmp1.i, label %pll_get_rate_index.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

pll_get_rate_index.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.013.i)
  %cmp = icmp slt i32 %i.013.i, 0
  br i1 %cmp, label %pll_get_rate_index.exit.cleanup_crit_edge, label %if.end7

pll_get_rate_index.exit.cleanup_crit_edge:        ; preds = %pll_get_rate_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %pll_get_rate_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %vco_param.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vco_param.i, align 4
  %arrayidx = getelementptr %struct.iproc_pll_vco_param, ptr %14, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %vco_param.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %vco_param.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %16 = ptrtoint ptr %vco_param.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %vco_param.sroa.6.0.copyload = load i32, ptr %vco_param.sroa.6.0.arrayidx.sroa_idx, align 4
  %vco_param.sroa.10.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %17 = ptrtoint ptr %vco_param.sroa.10.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %vco_param.sroa.10.0.copyload = load i32, ptr %vco_param.sroa.10.0.arrayidx.sroa_idx, align 4
  %vco_param.sroa.14.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %18 = ptrtoint ptr %vco_param.sroa.14.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %vco_param.sroa.14.0.copyload = load i32, ptr %vco_param.sroa.14.0.arrayidx.sroa_idx, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %pll_calc_param.exit.thread
  %vco_param.sroa.14.1 = phi i32 [ %vco_param.sroa.14.0.copyload, %if.end7 ], [ 1, %pll_calc_param.exit.thread ]
  %vco_param.sroa.10.1 = phi i32 [ %vco_param.sroa.10.0.copyload, %if.end7 ], [ %conv9.i, %pll_calc_param.exit.thread ]
  %vco_param.sroa.6.1 = phi i32 [ %vco_param.sroa.6.0.copyload, %if.end7 ], [ %div.i, %pll_calc_param.exit.thread ]
  %vco_param.sroa.0.1 = phi i32 [ %vco_param.sroa.0.0.copyload, %if.end7 ], [ %conv20.i, %pll_calc_param.exit.thread ]
  %19 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pll1, align 4
  %ctrl2.i = getelementptr inbounds %struct.iproc_pll, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl2.i, align 4
  %call.i25 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vco_param.sroa.14.1)
  %cmp.i27 = icmp eq i32 %vco_param.sroa.14.1, 0
  br i1 %cmp.i27, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i28 = shl i32 %parent_rate, 1
  br label %if.end.i30

if.else.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %div.i29 = udiv i32 %parent_rate, %vco_param.sroa.14.1
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.else.i, %if.then.i
  %ref_freq.0.i = phi i32 [ %mul.i28, %if.then.i ], [ %div.i29, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2094967296, i32 %vco_param.sroa.0.1)
  %cmp6.i = icmp ult i32 %vco_param.sroa.0.1, -2094967296
  %23 = add i32 %vco_param.sroa.0.1, -700000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000000, i32 %23)
  %24 = icmp ult i32 %23, 1500000000
  br i1 %24, label %if.end.i30.if.end22.i_crit_edge, label %if.else8.i

if.end.i30.if.end22.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.else8.i:                                       ; preds = %if.end.i30
  %25 = add i32 %vco_param.sroa.0.1, 2094967296
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000000, i32 %25)
  %26 = icmp ult i32 %25, 900000000
  br i1 %26, label %if.else8.i.if.end22.i_crit_edge, label %if.else13.i

if.else8.i.if.end22.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.else13.i:                                      ; preds = %if.else8.i
  %27 = add nsw i32 %vco_param.sroa.0.1, 1194967296
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000000, i32 %27)
  %28 = icmp ult i32 %27, 900000000
  br i1 %28, label %if.else13.i.if.end22.i_crit_edge, label %do.end.i

if.else13.i.if.end22.i_crit_edge:                 ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

do.end.i:                                         ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %call.i25, i32 noundef %vco_param.sroa.0.1) #13
  br label %cleanup

if.end22.i:                                       ; preds = %if.else13.i.if.end22.i_crit_edge, %if.else8.i.if.end22.i_crit_edge, %if.end.i30.if.end22.i_crit_edge
  %kp_index.0.i = phi i32 [ 0, %if.end.i30.if.end22.i_crit_edge ], [ 1, %if.else8.i.if.end22.i_crit_edge ], [ 2, %if.else13.i.if.end22.i_crit_edge ]
  %ki.0.i = phi i32 [ 4, %if.end.i30.if.end22.i_crit_edge ], [ 3, %if.else8.i.if.end22.i_crit_edge ], [ 3, %if.else13.i.if.end22.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %ref_freq.0.i)
  %cmp.i.i = icmp ult i32 %ref_freq.0.i, 10000000
  br i1 %cmp.i.i, label %if.end22.i.do.end28.i_crit_edge, label %land.lhs.true.i.i

if.end22.i.do.end28.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

land.lhs.true.i.i:                                ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500000, i32 %ref_freq.0.i)
  %cmp6.i.i = icmp ult i32 %ref_freq.0.i, 12500000
  br i1 %cmp6.i.i, label %land.lhs.true.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.1.i.i

land.lhs.true.i.i.get_kp.exit.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.1.i.i:                              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000000, i32 %ref_freq.0.i)
  %cmp6.1.i.i = icmp ult i32 %ref_freq.0.i, 15000000
  br i1 %cmp6.1.i.i, label %land.lhs.true.1.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.2.i.i

land.lhs.true.1.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.2.i.i:                              ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %ref_freq.0.i)
  %cmp6.2.i.i = icmp ult i32 %ref_freq.0.i, 20000000
  br i1 %cmp6.2.i.i, label %land.lhs.true.2.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.3.i.i

land.lhs.true.2.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.3.i.i:                              ; preds = %land.lhs.true.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %ref_freq.0.i)
  %cmp6.3.i.i = icmp ult i32 %ref_freq.0.i, 25000000
  br i1 %cmp6.3.i.i, label %land.lhs.true.3.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.4.i.i

land.lhs.true.3.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.4.i.i:                              ; preds = %land.lhs.true.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %ref_freq.0.i)
  %cmp6.4.i.i = icmp ult i32 %ref_freq.0.i, 50000000
  br i1 %cmp6.4.i.i, label %land.lhs.true.4.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.5.i.i

land.lhs.true.4.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.5.i.i:                              ; preds = %land.lhs.true.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000000, i32 %ref_freq.0.i)
  %cmp6.5.i.i = icmp ult i32 %ref_freq.0.i, 75000000
  br i1 %cmp6.5.i.i, label %land.lhs.true.5.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.6.i.i

land.lhs.true.5.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.6.i.i:                              ; preds = %land.lhs.true.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %ref_freq.0.i)
  %cmp6.6.i.i = icmp ult i32 %ref_freq.0.i, 100000000
  br i1 %cmp6.6.i.i, label %land.lhs.true.6.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.7.i.i

land.lhs.true.6.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

land.lhs.true.7.i.i:                              ; preds = %land.lhs.true.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %ref_freq.0.i)
  %cmp6.7.i.i = icmp ult i32 %ref_freq.0.i, 125000000
  br i1 %cmp6.7.i.i, label %land.lhs.true.7.i.i.get_kp.exit.i_crit_edge, label %land.lhs.true.7.i.i.do.end28.i_crit_edge

land.lhs.true.7.i.i.do.end28.i_crit_edge:         ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

land.lhs.true.7.i.i.get_kp.exit.i_crit_edge:      ; preds = %land.lhs.true.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_kp.exit.i

get_kp.exit.i:                                    ; preds = %land.lhs.true.7.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.6.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.5.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.4.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.3.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.2.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.1.i.i.get_kp.exit.i_crit_edge, %land.lhs.true.i.i.get_kp.exit.i_crit_edge
  %i.018.lcssa.i.i = phi i32 [ 0, %land.lhs.true.i.i.get_kp.exit.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.get_kp.exit.i_crit_edge ], [ 2, %land.lhs.true.2.i.i.get_kp.exit.i_crit_edge ], [ 3, %land.lhs.true.3.i.i.get_kp.exit.i_crit_edge ], [ 4, %land.lhs.true.4.i.i.get_kp.exit.i_crit_edge ], [ 5, %land.lhs.true.5.i.i.get_kp.exit.i_crit_edge ], [ 6, %land.lhs.true.6.i.i.get_kp.exit.i_crit_edge ], [ 7, %land.lhs.true.7.i.i.get_kp.exit.i_crit_edge ]
  %arrayidx9.i.i = getelementptr [3 x [8 x i32]], ptr @kp_table, i32 0, i32 %kp_index.0.i, i32 %i.018.lcssa.i.i
  %29 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp24.i = icmp slt i32 %30, 0
  br i1 %cmp24.i, label %get_kp.exit.i.do.end28.i_crit_edge, label %if.end31.i

get_kp.exit.i.do.end28.i_crit_edge:               ; preds = %get_kp.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28.i

do.end28.i:                                       ; preds = %get_kp.exit.i.do.end28.i_crit_edge, %land.lhs.true.7.i.i.do.end28.i_crit_edge, %if.end22.i.do.end28.i_crit_edge
  %retval.0.i442.i = phi i32 [ %30, %get_kp.exit.i.do.end28.i_crit_edge ], [ -22, %if.end22.i.do.end28.i_crit_edge ], [ -22, %land.lhs.true.7.i.i.do.end28.i_crit_edge ]
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %call.i25) #13
  br label %cleanup

if.end31.i:                                       ; preds = %get_kp.exit.i
  tail call fastcc void @__pll_enable(ptr noundef %20) #8
  %31 = ptrtoint ptr %pll1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll1, align 4
  %ctrl1.i.i = getelementptr inbounds %struct.iproc_pll, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %ctrl1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctrl1.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %status.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 10
  %37 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %status.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !40
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  %shift.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 10, i32 1
  %41 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %shift.i.i, align 4
  %shl.i.i = shl nuw i32 1, %42
  %and.i.i = and i32 %shl.i.i, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i322.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i322.i, label %if.end31.i.if.end60.i_crit_edge, label %if.end.i.i

if.end31.i.if.end60.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.end.i.i:                                       ; preds = %if.end31.i
  %control_base.i.i = getelementptr inbounds %struct.iproc_pll, ptr %32, i32 0, i32 1
  %43 = ptrtoint ptr %control_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %control_base.i.i, align 4
  %ndiv_int6.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 6
  %45 = ptrtoint ptr %ndiv_int6.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ndiv_int6.i.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %44, i32 %46
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #8, !srcloc !40
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  %shift13.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %shift13.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %shift13.i.i, align 4
  %shr.i.i = lshr i32 %48, %50
  %width.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 6, i32 2
  %51 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %width.i.i, align 4
  %notmask.i.i = shl nsw i32 -1, %52
  %sub.i.i = xor i32 %notmask.i.i, -1
  %and16.i.i = and i32 %shr.i.i, %sub.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and16.i.i, i32 %vco_param.sroa.6.1)
  %cmp18.not.i.i = icmp eq i32 %and16.i.i, %vco_param.sroa.6.1
  br i1 %cmp18.not.i.i, label %pll_fractional_change_only.exit.i, label %if.end.i.i.if.end60.i_crit_edge

if.end.i.i.if.end60.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

pll_fractional_change_only.exit.i:                ; preds = %if.end.i.i
  %53 = ptrtoint ptr %control_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %control_base.i.i, align 4
  %pdiv24.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 8
  %55 = ptrtoint ptr %pdiv24.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pdiv24.i.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %54, i32 %56
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i.i) #8, !srcloc !40
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %shift31.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 8, i32 1
  %59 = ptrtoint ptr %shift31.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %shift31.i.i, align 4
  %shr32.i.i = lshr i32 %58, %60
  %width34.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %34, i32 0, i32 8, i32 2
  %61 = ptrtoint ptr %width34.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %width34.i.i, align 4
  %notmask58.i.i = shl nsw i32 -1, %62
  %sub36.i.i = xor i32 %notmask58.i.i, -1
  %and37.i.i = and i32 %shr32.i.i, %sub36.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and37.i.i, i32 %vco_param.sroa.14.1)
  %cmp39.not.i.i = icmp eq i32 %and37.i.i, %vco_param.sroa.14.1
  br i1 %cmp39.not.i.i, label %if.then42.i, label %pll_fractional_change_only.exit.i.if.end60.i_crit_edge

pll_fractional_change_only.exit.i.if.end60.i_crit_edge: ; preds = %pll_fractional_change_only.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then42.i:                                      ; preds = %pll_fractional_change_only.exit.i
  %63 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %22, align 4
  %and.i = and i32 %64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool43.not.i, label %if.then42.i.if.end60.i_crit_edge, label %if.then44.i

if.then42.i.if.end60.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60.i

if.then44.i:                                      ; preds = %if.then42.i
  %control_base.i = getelementptr inbounds %struct.iproc_pll, ptr %20, i32 0, i32 1
  %65 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %control_base.i, align 4
  %ndiv_frac.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7
  %67 = ptrtoint ptr %ndiv_frac.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ndiv_frac.i, align 4
  %add.ptr.i = getelementptr i8, ptr %66, i32 %68
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  %width.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7, i32 2
  %71 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %width.i, align 4
  %notmask318.i = shl nsw i32 -1, %72
  %sub.i31 = xor i32 %notmask318.i, -1
  %shift.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %shift.i, align 4
  %shl50.i = shl i32 %sub.i31, %74
  %neg.i = xor i32 %shl50.i, -1
  %and51.i = and i32 %70, %neg.i
  %shl55.i = shl i32 %vco_param.sroa.10.1, %74
  %or.i = or i32 %and51.i, %shl55.i
  %75 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %control_base.i, align 4
  %77 = ptrtoint ptr %ndiv_frac.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ndiv_frac.i, align 4
  %79 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %add.ptr.i325.i = getelementptr i8, ptr %76, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i325.i, i32 %81) #8, !srcloc !43
  %82 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %80, align 4
  %and.i326.i = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i326.i)
  %tobool.not.i.i = icmp eq i32 %and.i326.i, 0
  br i1 %tobool.not.i.i, label %if.then44.i.cleanup_crit_edge, label %land.rhs.i.i

if.then44.i.cleanup_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i.i:                                     ; preds = %if.then44.i
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %20, align 4
  %cmp.i327.i = icmp eq ptr %85, %76
  br i1 %cmp.i327.i, label %land.rhs.i.i.if.then.i.i_crit_edge, label %lor.rhs.i.i

land.rhs.i.i.if.then.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %86 = ptrtoint ptr %control_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %control_base.i, align 4
  %cmp2.i.i = icmp eq ptr %87, %76
  br i1 %cmp2.i.i, label %lor.rhs.i.i.if.then.i.i_crit_edge, label %lor.rhs.i.i.cleanup_crit_edge, !prof !39

lor.rhs.i.i.cleanup_crit_edge:                    ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i.i.if.then.i.i_crit_edge:                ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.rhs.i.i.if.then.i.i_crit_edge, %land.rhs.i.i.if.then.i.i_crit_edge
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i325.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %cleanup

if.end60.i:                                       ; preds = %if.then42.i.if.end60.i_crit_edge, %pll_fractional_change_only.exit.i.if.end60.i_crit_edge, %if.end.i.i.if.end60.i_crit_edge, %if.end31.i.if.end60.i_crit_edge
  %89 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ctrl2.i, align 4
  %reset2.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %90, i32 0, i32 3
  %control_base.i331.i = getelementptr inbounds %struct.iproc_pll, ptr %20, i32 0, i32 1
  %91 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %control_base.i331.i, align 4
  %93 = ptrtoint ptr %reset2.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reset2.i.i, align 4
  %add.ptr.i332.i = getelementptr i8, ptr %92, i32 %94
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i332.i) #8, !srcloc !40
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !57
  %97 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %90, align 4
  %and.i333.i = and i32 %98, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333.i)
  %tobool.not.i334.i = icmp eq i32 %and.i333.i, 0
  %reset_shift6.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %90, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %reset_shift6.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %reset_shift6.i.i, align 4
  %shl7.i.i = shl nuw i32 1, %100
  %p_reset_shift8.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %90, i32 0, i32 3, i32 2
  %101 = ptrtoint ptr %p_reset_shift8.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %p_reset_shift8.i.i, align 4
  %shl9.i.i = shl nuw i32 1, %102
  %or10.i.i = or i32 %shl9.i.i, %shl7.i.i
  %or5.i.i = or i32 %or10.i.i, %96
  %neg.i.i = xor i32 %or10.i.i, -1
  %and11.i.i = and i32 %96, %neg.i.i
  %val.0.i.i = select i1 %tobool.not.i334.i, i32 %and11.i.i, i32 %or5.i.i
  %103 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %control_base.i331.i, align 4
  %105 = ptrtoint ptr %reset2.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %reset2.i.i, align 4
  %107 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %109 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i) #8
  %add.ptr.i.i.i = getelementptr i8, ptr %104, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %109) #8, !srcloc !43
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %108, align 4
  %and.i.i.i = and i32 %111, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end60.i.__pll_put_in_reset.exit.i_crit_edge, label %land.rhs.i.i.i

if.end60.i.__pll_put_in_reset.exit.i_crit_edge:   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pll_put_in_reset.exit.i

land.rhs.i.i.i:                                   ; preds = %if.end60.i
  %112 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %20, align 4
  %cmp.i.i.i = icmp eq ptr %113, %104
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i.if.then.i.i.i_crit_edge, label %lor.rhs.i.i.i

land.rhs.i.i.i.if.then.i.i.i_crit_edge:           ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

lor.rhs.i.i.i:                                    ; preds = %land.rhs.i.i.i
  %114 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i.i.i = icmp eq ptr %115, %104
  br i1 %cmp2.i.i.i, label %lor.rhs.i.i.i.if.then.i.i.i_crit_edge, label %lor.rhs.i.i.i.__pll_put_in_reset.exit.i_crit_edge, !prof !39

lor.rhs.i.i.i.__pll_put_in_reset.exit.i_crit_edge: ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pll_put_in_reset.exit.i

lor.rhs.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %lor.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.rhs.i.i.i.if.then.i.i.i_crit_edge, %land.rhs.i.i.i.if.then.i.i.i_crit_edge
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %__pll_put_in_reset.exit.i

__pll_put_in_reset.exit.i:                        ; preds = %if.then.i.i.i, %lor.rhs.i.i.i.__pll_put_in_reset.exit.i_crit_edge, %if.end60.i.__pll_put_in_reset.exit.i_crit_edge
  %117 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %22, align 4
  %and62.i = and i32 %118, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %__pll_put_in_reset.exit.i.if.end89.i_crit_edge, label %if.then64.i

__pll_put_in_reset.exit.i.if.end89.i_crit_edge:   ; preds = %__pll_put_in_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

if.then64.i:                                      ; preds = %__pll_put_in_reset.exit.i
  %119 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %control_base.i331.i, align 4
  %macro_mode.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 11
  %121 = ptrtoint ptr %macro_mode.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %macro_mode.i, align 4
  %add.ptr69.i = getelementptr i8, ptr %120, i32 %122
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69.i) #8, !srcloc !40
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %width74.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 11, i32 2
  %125 = ptrtoint ptr %width74.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %width74.i, align 4
  %notmask317.i = shl nsw i32 -1, %126
  %sub76.i = xor i32 %notmask317.i, -1
  %shift78.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 11, i32 1
  %127 = ptrtoint ptr %shift78.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %shift78.i, align 4
  %shl79.i = shl i32 %sub76.i, %128
  %neg80.i = xor i32 %shl79.i, -1
  %and81.i = and i32 %124, %neg80.i
  %shl84.i = shl i32 7, %128
  %or85.i = or i32 %and81.i, %shl84.i
  %129 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %control_base.i331.i, align 4
  %131 = ptrtoint ptr %macro_mode.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %macro_mode.i, align 4
  %133 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %135 = tail call i32 @llvm.bswap.i32(i32 %or85.i) #8
  %add.ptr.i338.i = getelementptr i8, ptr %130, i32 %132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i338.i, i32 %135) #8, !srcloc !43
  %136 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %134, align 4
  %and.i339.i = and i32 %137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i339.i)
  %tobool.not.i340.i = icmp eq i32 %and.i339.i, 0
  br i1 %tobool.not.i340.i, label %if.then64.i.if.end89.i_crit_edge, label %land.rhs.i342.i

if.then64.i.if.end89.i_crit_edge:                 ; preds = %if.then64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

land.rhs.i342.i:                                  ; preds = %if.then64.i
  %138 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %20, align 4
  %cmp.i341.i = icmp eq ptr %139, %130
  br i1 %cmp.i341.i, label %land.rhs.i342.i.if.then.i346.i_crit_edge, label %lor.rhs.i345.i

land.rhs.i342.i.if.then.i346.i_crit_edge:         ; preds = %land.rhs.i342.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i346.i

lor.rhs.i345.i:                                   ; preds = %land.rhs.i342.i
  %140 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i344.i = icmp eq ptr %141, %130
  br i1 %cmp2.i344.i, label %lor.rhs.i345.i.if.then.i346.i_crit_edge, label %lor.rhs.i345.i.if.end89.i_crit_edge, !prof !39

lor.rhs.i345.i.if.end89.i_crit_edge:              ; preds = %lor.rhs.i345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89.i

lor.rhs.i345.i.if.then.i346.i_crit_edge:          ; preds = %lor.rhs.i345.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i346.i

if.then.i346.i:                                   ; preds = %lor.rhs.i345.i.if.then.i346.i_crit_edge, %land.rhs.i342.i.if.then.i346.i_crit_edge
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i338.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end89.i

if.end89.i:                                       ; preds = %if.then.i346.i, %lor.rhs.i345.i.if.end89.i_crit_edge, %if.then64.i.if.end89.i_crit_edge, %__pll_put_in_reset.exit.i.if.end89.i_crit_edge
  %143 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %control_base.i331.i, align 4
  %vco_ctrl.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 9
  %145 = ptrtoint ptr %vco_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %vco_ctrl.i, align 4
  %147 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %add.ptr.i350.i = getelementptr i8, ptr %144, i32 %146
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350.i, i32 0) #8, !srcloc !43
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 4
  %and.i351.i = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i351.i)
  %tobool.not.i352.i = icmp eq i32 %and.i351.i, 0
  br i1 %tobool.not.i352.i, label %if.end89.i.iproc_pll_write.exit360.i_crit_edge, label %land.rhs.i354.i

if.end89.i.iproc_pll_write.exit360.i_crit_edge:   ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit360.i

land.rhs.i354.i:                                  ; preds = %if.end89.i
  %151 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %20, align 4
  %cmp.i353.i = icmp eq ptr %152, %144
  br i1 %cmp.i353.i, label %land.rhs.i354.i.if.then.i358.i_crit_edge, label %lor.rhs.i357.i

land.rhs.i354.i.if.then.i358.i_crit_edge:         ; preds = %land.rhs.i354.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i358.i

lor.rhs.i357.i:                                   ; preds = %land.rhs.i354.i
  %153 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i356.i = icmp eq ptr %154, %144
  br i1 %cmp2.i356.i, label %lor.rhs.i357.i.if.then.i358.i_crit_edge, label %lor.rhs.i357.i.iproc_pll_write.exit360.i_crit_edge, !prof !39

lor.rhs.i357.i.iproc_pll_write.exit360.i_crit_edge: ; preds = %lor.rhs.i357.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit360.i

lor.rhs.i357.i.if.then.i358.i_crit_edge:          ; preds = %lor.rhs.i357.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i358.i

if.then.i358.i:                                   ; preds = %lor.rhs.i357.i.if.then.i358.i_crit_edge, %land.rhs.i354.i.if.then.i358.i_crit_edge
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit360.i

iproc_pll_write.exit360.i:                        ; preds = %if.then.i358.i, %lor.rhs.i357.i.iproc_pll_write.exit360.i_crit_edge, %if.end89.i.iproc_pll_write.exit360.i_crit_edge
  %156 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %control_base.i331.i, align 4
  %l_offset.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 9, i32 1
  %158 = ptrtoint ptr %l_offset.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %l_offset.i, align 4
  %add.ptr95.i = getelementptr i8, ptr %157, i32 %159
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr95.i) #8, !srcloc !40
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %23)
  %162 = icmp ult i32 %23, 500000000
  %or103.i = or i32 %161, 1073741824
  %val.0.i = select i1 %162, i32 %or103.i, i32 %161
  %and107.i = and i32 %val.0.i, -524289
  %masksel.i = select i1 %cmp6.i, i32 0, i32 524288
  %val.1.i = or i32 %and107.i, %masksel.i
  %163 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %control_base.i331.i, align 4
  %165 = ptrtoint ptr %l_offset.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %l_offset.i, align 4
  %167 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %169 = tail call i32 @llvm.bswap.i32(i32 %val.1.i) #8
  %add.ptr.i362.i = getelementptr i8, ptr %164, i32 %166
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i362.i, i32 %169) #8, !srcloc !43
  %170 = ptrtoint ptr %168 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %168, align 4
  %and.i363.i = and i32 %171, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i363.i)
  %tobool.not.i364.i = icmp eq i32 %and.i363.i, 0
  br i1 %tobool.not.i364.i, label %iproc_pll_write.exit360.i.iproc_pll_write.exit372.i_crit_edge, label %land.rhs.i366.i

iproc_pll_write.exit360.i.iproc_pll_write.exit372.i_crit_edge: ; preds = %iproc_pll_write.exit360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit372.i

land.rhs.i366.i:                                  ; preds = %iproc_pll_write.exit360.i
  %172 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %20, align 4
  %cmp.i365.i = icmp eq ptr %173, %164
  br i1 %cmp.i365.i, label %land.rhs.i366.i.if.then.i370.i_crit_edge, label %lor.rhs.i369.i

land.rhs.i366.i.if.then.i370.i_crit_edge:         ; preds = %land.rhs.i366.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i370.i

lor.rhs.i369.i:                                   ; preds = %land.rhs.i366.i
  %174 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i368.i = icmp eq ptr %175, %164
  br i1 %cmp2.i368.i, label %lor.rhs.i369.i.if.then.i370.i_crit_edge, label %lor.rhs.i369.i.iproc_pll_write.exit372.i_crit_edge, !prof !39

lor.rhs.i369.i.iproc_pll_write.exit372.i_crit_edge: ; preds = %lor.rhs.i369.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit372.i

lor.rhs.i369.i.if.then.i370.i_crit_edge:          ; preds = %lor.rhs.i369.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i370.i

if.then.i370.i:                                   ; preds = %lor.rhs.i369.i.if.then.i370.i_crit_edge, %land.rhs.i366.i.if.then.i370.i_crit_edge
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i362.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit372.i

iproc_pll_write.exit372.i:                        ; preds = %if.then.i370.i, %lor.rhs.i369.i.iproc_pll_write.exit372.i_crit_edge, %iproc_pll_write.exit360.i.iproc_pll_write.exit372.i_crit_edge
  %177 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %control_base.i331.i, align 4
  %ndiv_int.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 6
  %179 = ptrtoint ptr %ndiv_int.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ndiv_int.i, align 4
  %add.ptr118.i = getelementptr i8, ptr %178, i32 %180
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118.i) #8, !srcloc !40
  %182 = tail call i32 @llvm.bswap.i32(i32 %181) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %width123.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 6, i32 2
  %183 = ptrtoint ptr %width123.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %width123.i, align 4
  %notmask.i = shl nsw i32 -1, %184
  %sub125.i = xor i32 %notmask.i, -1
  %shift127.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 6, i32 1
  %185 = ptrtoint ptr %shift127.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %shift127.i, align 4
  %shl128.i = shl i32 %sub125.i, %186
  %neg129.i = xor i32 %shl128.i, -1
  %and130.i = and i32 %182, %neg129.i
  %shl134.i = shl i32 %vco_param.sroa.6.1, %186
  %or135.i = or i32 %and130.i, %shl134.i
  %187 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %control_base.i331.i, align 4
  %189 = ptrtoint ptr %ndiv_int.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %ndiv_int.i, align 4
  %191 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %193 = tail call i32 @llvm.bswap.i32(i32 %or135.i) #8
  %add.ptr.i374.i = getelementptr i8, ptr %188, i32 %190
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374.i, i32 %193) #8, !srcloc !43
  %194 = ptrtoint ptr %192 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %192, align 4
  %and.i375.i = and i32 %195, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i375.i)
  %tobool.not.i376.i = icmp eq i32 %and.i375.i, 0
  br i1 %tobool.not.i376.i, label %iproc_pll_write.exit372.i.iproc_pll_write.exit384.i_crit_edge, label %land.rhs.i378.i

iproc_pll_write.exit372.i.iproc_pll_write.exit384.i_crit_edge: ; preds = %iproc_pll_write.exit372.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit384.i

land.rhs.i378.i:                                  ; preds = %iproc_pll_write.exit372.i
  %196 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %20, align 4
  %cmp.i377.i = icmp eq ptr %197, %188
  br i1 %cmp.i377.i, label %land.rhs.i378.i.if.then.i382.i_crit_edge, label %lor.rhs.i381.i

land.rhs.i378.i.if.then.i382.i_crit_edge:         ; preds = %land.rhs.i378.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i382.i

lor.rhs.i381.i:                                   ; preds = %land.rhs.i378.i
  %198 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i380.i = icmp eq ptr %199, %188
  br i1 %cmp2.i380.i, label %lor.rhs.i381.i.if.then.i382.i_crit_edge, label %lor.rhs.i381.i.iproc_pll_write.exit384.i_crit_edge, !prof !39

lor.rhs.i381.i.iproc_pll_write.exit384.i_crit_edge: ; preds = %lor.rhs.i381.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit384.i

lor.rhs.i381.i.if.then.i382.i_crit_edge:          ; preds = %lor.rhs.i381.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i382.i

if.then.i382.i:                                   ; preds = %lor.rhs.i381.i.if.then.i382.i_crit_edge, %land.rhs.i378.i.if.then.i382.i_crit_edge
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit384.i

iproc_pll_write.exit384.i:                        ; preds = %if.then.i382.i, %lor.rhs.i381.i.iproc_pll_write.exit384.i_crit_edge, %iproc_pll_write.exit372.i.iproc_pll_write.exit384.i_crit_edge
  %201 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %22, align 4
  %and140.i = and i32 %202, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  br i1 %tobool141.not.i, label %iproc_pll_write.exit384.i.if.end169.i_crit_edge, label %if.then142.i

iproc_pll_write.exit384.i.if.end169.i_crit_edge:  ; preds = %iproc_pll_write.exit384.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.i

if.then142.i:                                     ; preds = %iproc_pll_write.exit384.i
  %203 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %control_base.i331.i, align 4
  %ndiv_frac146.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7
  %205 = ptrtoint ptr %ndiv_frac146.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ndiv_frac146.i, align 4
  %add.ptr148.i = getelementptr i8, ptr %204, i32 %206
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr148.i) #8, !srcloc !40
  %208 = tail call i32 @llvm.bswap.i32(i32 %207) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %width153.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7, i32 2
  %209 = ptrtoint ptr %width153.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %width153.i, align 4
  %notmask316.i = shl nsw i32 -1, %210
  %sub155.i = xor i32 %notmask316.i, -1
  %shift157.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 7, i32 1
  %211 = ptrtoint ptr %shift157.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %shift157.i, align 4
  %shl158.i = shl i32 %sub155.i, %212
  %neg159.i = xor i32 %shl158.i, -1
  %and160.i = and i32 %208, %neg159.i
  %shl164.i = shl i32 %vco_param.sroa.10.1, %212
  %or165.i = or i32 %and160.i, %shl164.i
  %213 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %control_base.i331.i, align 4
  %215 = ptrtoint ptr %ndiv_frac146.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %ndiv_frac146.i, align 4
  %217 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %219 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #8
  %add.ptr.i386.i = getelementptr i8, ptr %214, i32 %216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i386.i, i32 %219) #8, !srcloc !43
  %220 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %218, align 4
  %and.i387.i = and i32 %221, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i387.i)
  %tobool.not.i388.i = icmp eq i32 %and.i387.i, 0
  br i1 %tobool.not.i388.i, label %if.then142.i.if.end169.i_crit_edge, label %land.rhs.i390.i

if.then142.i.if.end169.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.i

land.rhs.i390.i:                                  ; preds = %if.then142.i
  %222 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %20, align 4
  %cmp.i389.i = icmp eq ptr %223, %214
  br i1 %cmp.i389.i, label %land.rhs.i390.i.if.then.i394.i_crit_edge, label %lor.rhs.i393.i

land.rhs.i390.i.if.then.i394.i_crit_edge:         ; preds = %land.rhs.i390.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i394.i

lor.rhs.i393.i:                                   ; preds = %land.rhs.i390.i
  %224 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i392.i = icmp eq ptr %225, %214
  br i1 %cmp2.i392.i, label %lor.rhs.i393.i.if.then.i394.i_crit_edge, label %lor.rhs.i393.i.if.end169.i_crit_edge, !prof !39

lor.rhs.i393.i.if.end169.i_crit_edge:             ; preds = %lor.rhs.i393.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169.i

lor.rhs.i393.i.if.then.i394.i_crit_edge:          ; preds = %lor.rhs.i393.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i394.i

if.then.i394.i:                                   ; preds = %lor.rhs.i393.i.if.then.i394.i_crit_edge, %land.rhs.i390.i.if.then.i394.i_crit_edge
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i386.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end169.i

if.end169.i:                                      ; preds = %if.then.i394.i, %lor.rhs.i393.i.if.end169.i_crit_edge, %if.then142.i.if.end169.i_crit_edge, %iproc_pll_write.exit384.i.if.end169.i_crit_edge
  %227 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %control_base.i331.i, align 4
  %pdiv173.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 8
  %229 = ptrtoint ptr %pdiv173.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %pdiv173.i, align 4
  %add.ptr175.i = getelementptr i8, ptr %228, i32 %230
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175.i) #8, !srcloc !40
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %width180.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 8, i32 2
  %233 = ptrtoint ptr %width180.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %width180.i, align 4
  %notmask315.i = shl nsw i32 -1, %234
  %sub182.i = xor i32 %notmask315.i, -1
  %shift184.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %22, i32 0, i32 8, i32 1
  %235 = ptrtoint ptr %shift184.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %shift184.i, align 4
  %shl185.i = shl i32 %sub182.i, %236
  %neg186.i = xor i32 %shl185.i, -1
  %and187.i = and i32 %232, %neg186.i
  %shl191.i = shl i32 %vco_param.sroa.14.1, %236
  %or192.i = or i32 %and187.i, %shl191.i
  %237 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %control_base.i331.i, align 4
  %239 = ptrtoint ptr %pdiv173.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %pdiv173.i, align 4
  %241 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %243 = tail call i32 @llvm.bswap.i32(i32 %or192.i) #8
  %add.ptr.i398.i = getelementptr i8, ptr %238, i32 %240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i398.i, i32 %243) #8, !srcloc !43
  %244 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %242, align 4
  %and.i399.i = and i32 %245, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i399.i)
  %tobool.not.i400.i = icmp eq i32 %and.i399.i, 0
  br i1 %tobool.not.i400.i, label %if.end169.i.iproc_pll_write.exit408.i_crit_edge, label %land.rhs.i402.i

if.end169.i.iproc_pll_write.exit408.i_crit_edge:  ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit408.i

land.rhs.i402.i:                                  ; preds = %if.end169.i
  %246 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %20, align 4
  %cmp.i401.i = icmp eq ptr %247, %238
  br i1 %cmp.i401.i, label %land.rhs.i402.i.if.then.i406.i_crit_edge, label %lor.rhs.i405.i

land.rhs.i402.i.if.then.i406.i_crit_edge:         ; preds = %land.rhs.i402.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i406.i

lor.rhs.i405.i:                                   ; preds = %land.rhs.i402.i
  %248 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i404.i = icmp eq ptr %249, %238
  br i1 %cmp2.i404.i, label %lor.rhs.i405.i.if.then.i406.i_crit_edge, label %lor.rhs.i405.i.iproc_pll_write.exit408.i_crit_edge, !prof !39

lor.rhs.i405.i.iproc_pll_write.exit408.i_crit_edge: ; preds = %lor.rhs.i405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit408.i

lor.rhs.i405.i.if.then.i406.i_crit_edge:          ; preds = %lor.rhs.i405.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i406.i

if.then.i406.i:                                   ; preds = %lor.rhs.i405.i.if.then.i406.i_crit_edge, %land.rhs.i402.i.if.then.i406.i_crit_edge
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i398.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit408.i

iproc_pll_write.exit408.i:                        ; preds = %if.then.i406.i, %lor.rhs.i405.i.iproc_pll_write.exit408.i_crit_edge, %if.end169.i.iproc_pll_write.exit408.i_crit_edge
  %251 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %ctrl2.i, align 4
  %reset2.i410.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 3
  %dig_filter3.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4
  %253 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %control_base.i331.i, align 4
  %255 = ptrtoint ptr %dig_filter3.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %dig_filter3.i.i, align 4
  %add.ptr.i412.i = getelementptr i8, ptr %254, i32 %256
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412.i) #8, !srcloc !40
  %258 = tail call i32 @llvm.bswap.i32(i32 %257) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %ki_width.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 2
  %259 = ptrtoint ptr %ki_width.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %ki_width.i.i, align 4
  %notmask.i413.i = shl nsw i32 -1, %260
  %sub.i414.i = xor i32 %notmask.i413.i, -1
  %ki_shift.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 1
  %261 = ptrtoint ptr %ki_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %ki_shift.i.i, align 4
  %shl5.i.i = shl i32 %sub.i414.i, %262
  %kp_width.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 4
  %263 = ptrtoint ptr %kp_width.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %kp_width.i.i, align 4
  %notmask1.i.i = shl nsw i32 -1, %264
  %sub7.i.i = xor i32 %notmask1.i.i, -1
  %kp_shift.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 3
  %265 = ptrtoint ptr %kp_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %kp_shift.i.i, align 4
  %shl8.i.i = shl i32 %sub7.i.i, %266
  %or.i415.i = or i32 %shl8.i.i, %shl5.i.i
  %ka_width.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 6
  %267 = ptrtoint ptr %ka_width.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ka_width.i.i, align 4
  %notmask2.i.i = shl nsw i32 -1, %268
  %sub10.i.i = xor i32 %notmask2.i.i, -1
  %ka_shift.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 4, i32 5
  %269 = ptrtoint ptr %ka_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %ka_shift.i.i, align 4
  %shl11.i.i = shl i32 %sub10.i.i, %270
  %or12.i.i = or i32 %or.i415.i, %shl11.i.i
  %neg.i416.i = xor i32 %or12.i.i, -1
  %and.i417.i = and i32 %258, %neg.i416.i
  %shl14.i.i = shl i32 %ki.0.i, %262
  %shl16.i.i = shl i32 %30, %266
  %or17.i.i = or i32 %shl16.i.i, %shl14.i.i
  %or21.i.i = or i32 %or17.i.i, %and.i417.i
  %271 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %control_base.i331.i, align 4
  %273 = ptrtoint ptr %dig_filter3.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %dig_filter3.i.i, align 4
  %275 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %277 = tail call i32 @llvm.bswap.i32(i32 %or21.i.i) #8
  %add.ptr.i.i418.i = getelementptr i8, ptr %272, i32 %274
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i418.i, i32 %277) #8, !srcloc !43
  %278 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %276, align 4
  %and.i.i419.i = and i32 %279, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i419.i)
  %tobool.not.i.i420.i = icmp eq i32 %and.i.i419.i, 0
  br i1 %tobool.not.i.i420.i, label %iproc_pll_write.exit408.i.iproc_pll_write.exit.i.i_crit_edge, label %land.rhs.i.i422.i

iproc_pll_write.exit408.i.iproc_pll_write.exit.i.i_crit_edge: ; preds = %iproc_pll_write.exit408.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit.i.i

land.rhs.i.i422.i:                                ; preds = %iproc_pll_write.exit408.i
  %280 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %20, align 4
  %cmp.i.i421.i = icmp eq ptr %281, %272
  br i1 %cmp.i.i421.i, label %land.rhs.i.i422.i.if.then.i.i425.i_crit_edge, label %lor.rhs.i.i424.i

land.rhs.i.i422.i.if.then.i.i425.i_crit_edge:     ; preds = %land.rhs.i.i422.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i425.i

lor.rhs.i.i424.i:                                 ; preds = %land.rhs.i.i422.i
  %282 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i.i423.i = icmp eq ptr %283, %272
  br i1 %cmp2.i.i423.i, label %lor.rhs.i.i424.i.if.then.i.i425.i_crit_edge, label %lor.rhs.i.i424.i.iproc_pll_write.exit.i.i_crit_edge, !prof !39

lor.rhs.i.i424.i.iproc_pll_write.exit.i.i_crit_edge: ; preds = %lor.rhs.i.i424.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit.i.i

lor.rhs.i.i424.i.if.then.i.i425.i_crit_edge:      ; preds = %lor.rhs.i.i424.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i425.i

if.then.i.i425.i:                                 ; preds = %lor.rhs.i.i424.i.if.then.i.i425.i_crit_edge, %land.rhs.i.i422.i.if.then.i.i425.i_crit_edge
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i418.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit.i.i

iproc_pll_write.exit.i.i:                         ; preds = %if.then.i.i425.i, %lor.rhs.i.i424.i.iproc_pll_write.exit.i.i_crit_edge, %iproc_pll_write.exit408.i.iproc_pll_write.exit.i.i_crit_edge
  %285 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %control_base.i331.i, align 4
  %287 = ptrtoint ptr %reset2.i410.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %reset2.i410.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %286, i32 %288
  %289 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i.i) #8, !srcloc !40
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  %291 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %252, align 4
  %and32.i.i = and i32 %292, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i)
  %tobool.not.i426.i = icmp eq i32 %and32.i.i, 0
  %reset_shift38.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 3, i32 1
  %293 = ptrtoint ptr %reset_shift38.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %reset_shift38.i.i, align 4
  %shl39.i.i = shl nuw i32 1, %294
  %p_reset_shift40.i.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %252, i32 0, i32 3, i32 2
  %295 = ptrtoint ptr %p_reset_shift40.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %p_reset_shift40.i.i, align 4
  %shl41.i.i = shl nuw i32 1, %296
  %or42.i.i = or i32 %shl41.i.i, %shl39.i.i
  %neg36.i.i = xor i32 %or42.i.i, -1
  %and37.i427.i = and i32 %290, %neg36.i.i
  %or43.i.i = or i32 %or42.i.i, %290
  %val.0.i430.i = select i1 %tobool.not.i426.i, i32 %or43.i.i, i32 %and37.i427.i
  %297 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %control_base.i331.i, align 4
  %299 = ptrtoint ptr %reset2.i410.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %reset2.i410.i, align 4
  %301 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ctrl2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %303 = tail call i32 @llvm.bswap.i32(i32 %val.0.i430.i) #8
  %add.ptr.i4.i.i = getelementptr i8, ptr %298, i32 %300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %303) #8, !srcloc !43
  %304 = ptrtoint ptr %302 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %302, align 4
  %and.i5.i.i = and i32 %305, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i.i)
  %tobool.not.i6.i.i = icmp eq i32 %and.i5.i.i, 0
  br i1 %tobool.not.i6.i.i, label %iproc_pll_write.exit.i.i.__pll_bring_out_reset.exit.i_crit_edge, label %land.rhs.i8.i.i

iproc_pll_write.exit.i.i.__pll_bring_out_reset.exit.i_crit_edge: ; preds = %iproc_pll_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pll_bring_out_reset.exit.i

land.rhs.i8.i.i:                                  ; preds = %iproc_pll_write.exit.i.i
  %306 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %20, align 4
  %cmp.i7.i.i = icmp eq ptr %307, %298
  br i1 %cmp.i7.i.i, label %land.rhs.i8.i.i.if.then.i12.i.i_crit_edge, label %lor.rhs.i11.i.i

land.rhs.i8.i.i.if.then.i12.i.i_crit_edge:        ; preds = %land.rhs.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i12.i.i

lor.rhs.i11.i.i:                                  ; preds = %land.rhs.i8.i.i
  %308 = ptrtoint ptr %control_base.i331.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %control_base.i331.i, align 4
  %cmp2.i10.i.i = icmp eq ptr %309, %298
  br i1 %cmp2.i10.i.i, label %lor.rhs.i11.i.i.if.then.i12.i.i_crit_edge, label %lor.rhs.i11.i.i.__pll_bring_out_reset.exit.i_crit_edge, !prof !39

lor.rhs.i11.i.i.__pll_bring_out_reset.exit.i_crit_edge: ; preds = %lor.rhs.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__pll_bring_out_reset.exit.i

lor.rhs.i11.i.i.if.then.i12.i.i_crit_edge:        ; preds = %lor.rhs.i11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i12.i.i

if.then.i12.i.i:                                  ; preds = %lor.rhs.i11.i.i.if.then.i12.i.i_crit_edge, %land.rhs.i8.i.i.if.then.i12.i.i_crit_edge
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %__pll_bring_out_reset.exit.i

__pll_bring_out_reset.exit.i:                     ; preds = %if.then.i12.i.i, %lor.rhs.i11.i.i.__pll_bring_out_reset.exit.i_crit_edge, %iproc_pll_write.exit.i.i.__pll_bring_out_reset.exit.i_crit_edge
  %311 = ptrtoint ptr %ctrl2.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %ctrl2.i, align 4
  %status.i433.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %312, i32 0, i32 10
  %shift.i434.i = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %312, i32 0, i32 10, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i439.i.for.body.i.i_crit_edge, %__pll_bring_out_reset.exit.i
  %i.09.i.i = phi i32 [ 0, %__pll_bring_out_reset.exit.i ], [ %inc.i.i, %if.end.i439.i.for.body.i.i_crit_edge ]
  %313 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %20, align 4
  %315 = ptrtoint ptr %status.i433.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %status.i433.i, align 4
  %add.ptr.i435.i = getelementptr i8, ptr %314, i32 %316
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i435.i) #8, !srcloc !40
  %318 = tail call i32 @llvm.bswap.i32(i32 %317) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %319 = ptrtoint ptr %shift.i434.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %shift.i434.i, align 4
  %shl.i436.i = shl nuw i32 1, %320
  %and.i437.i = and i32 %shl.i436.i, %318
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i437.i)
  %tobool.not.i438.i = icmp eq i32 %and.i437.i, 0
  br i1 %tobool.not.i438.i, label %if.end.i439.i, label %for.body.i.i.cleanup_crit_edge

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i439.i:                                    ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %321 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %321(i32 noundef 2147480) #8
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 100
  br i1 %exitcond.not.i.i, label %do.end201.i, label %if.end.i439.i.for.body.i.i_crit_edge

if.end.i439.i.for.body.i.i_crit_edge:             ; preds = %if.end.i439.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

do.end201.i:                                      ; preds = %if.end.i439.i
  call void @__sanitizer_cov_trace_pc() #10
  %call203.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, ptr noundef %call.i25) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end201.i, %for.body.i.i.cleanup_crit_edge, %if.then.i.i, %lor.rhs.i.i.cleanup_crit_edge, %if.then44.i.cleanup_crit_edge, %do.end28.i, %do.end.i, %pll_get_rate_index.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.013.i, %pll_get_rate_index.exit.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ %retval.0.i442.i, %do.end28.i ], [ -5, %do.end201.i ], [ -22, %do.end.i ], [ 0, %if.then44.i.cleanup_crit_edge ], [ 0, %lor.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %for.body.i.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pll_enable(ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 4
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 1
  %4 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_base, align 4
  %aon = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %aon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aon, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  %pwr_width = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %pwr_width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwr_width, align 4
  %notmask1 = shl nsw i32 -1, %11
  %sub = xor i32 %notmask1, -1
  %pwr_shift = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %pwr_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pwr_shift, align 4
  %shl5 = shl i32 %sub, %13
  %neg = xor i32 %shl5, -1
  %and6 = and i32 %9, %neg
  %14 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control_base, align 4
  %16 = ptrtoint ptr %aon to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aon, align 4
  %18 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %and6) #8
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !43
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.rhs.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs.i:                                       ; preds = %if.then
  %23 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pll, align 4
  %cmp.i = icmp eq ptr %24, %15
  br i1 %cmp.i, label %land.rhs.i.if.then.i_crit_edge, label %lor.rhs.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %25 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control_base, align 4
  %cmp2.i = icmp eq ptr %26, %15
  br i1 %cmp2.i, label %lor.rhs.i.if.then.i_crit_edge, label %lor.rhs.i.if.end_crit_edge, !prof !39

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end

if.end:                                           ; preds = %if.then.i, %lor.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pwr_base = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 2
  %28 = ptrtoint ptr %pwr_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pwr_base, align 4
  %tobool10.not = icmp eq ptr %29, null
  br i1 %tobool10.not, label %if.end.if.end35_crit_edge, label %if.then11

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then11:                                        ; preds = %if.end
  %aon15 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %aon15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aon15, align 4
  %add.ptr17 = getelementptr i8, ptr %29, i32 %31
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #8, !srcloc !40
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !67
  %pwr_width22 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %pwr_width22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pwr_width22, align 4
  %notmask = shl nsw i32 -1, %35
  %sub24 = xor i32 %notmask, -1
  %pwr_shift26 = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %pwr_shift26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pwr_shift26, align 4
  %shl27 = shl i32 %sub24, %37
  %or = or i32 %shl27, %33
  %iso_shift = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %iso_shift to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iso_shift, align 4
  %shl29 = shl nuw i32 1, %39
  %neg30 = xor i32 %shl29, -1
  %and31 = and i32 %or, %neg30
  %40 = ptrtoint ptr %pwr_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pwr_base, align 4
  %42 = ptrtoint ptr %aon15 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %aon15, align 4
  %44 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %and31) #8
  %add.ptr.i3 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %46) #8, !srcloc !43
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %45, align 4
  %and.i4 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool.not.i5 = icmp eq i32 %and.i4, 0
  br i1 %tobool.not.i5, label %if.then11.if.end35_crit_edge, label %land.rhs.i7

if.then11.if.end35_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

land.rhs.i7:                                      ; preds = %if.then11
  %49 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pll, align 4
  %cmp.i6 = icmp eq ptr %50, %41
  br i1 %cmp.i6, label %land.rhs.i7.if.then.i11_crit_edge, label %lor.rhs.i10

land.rhs.i7.if.then.i11_crit_edge:                ; preds = %land.rhs.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i11

lor.rhs.i10:                                      ; preds = %land.rhs.i7
  %control_base.i8 = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 1
  %51 = ptrtoint ptr %control_base.i8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %control_base.i8, align 4
  %cmp2.i9 = icmp eq ptr %52, %41
  br i1 %cmp2.i9, label %lor.rhs.i10.if.then.i11_crit_edge, label %lor.rhs.i10.if.end35_crit_edge, !prof !39

lor.rhs.i10.if.end35_crit_edge:                   ; preds = %lor.rhs.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

lor.rhs.i10.if.then.i11_crit_edge:                ; preds = %lor.rhs.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i11

if.then.i11:                                      ; preds = %lor.rhs.i10.if.then.i11_crit_edge, %land.rhs.i7.if.then.i11_crit_edge
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end35

if.end35:                                         ; preds = %if.then.i11, %lor.rhs.i10.if.end35_crit_edge, %if.then11.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 4
  %and37 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end53_crit_edge, label %if.then39

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then39:                                        ; preds = %if.end35
  %asiu_base = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 3
  %56 = ptrtoint ptr %asiu_base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %asiu_base, align 4
  %asiu = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %asiu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %asiu, align 4
  %add.ptr43 = getelementptr i8, ptr %57, i32 %59
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #8, !srcloc !40
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  %en_shift = getelementptr inbounds %struct.iproc_pll_ctrl, ptr %1, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %en_shift to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %en_shift, align 4
  %shl48 = shl nuw i32 1, %63
  %or49 = or i32 %shl48, %61
  %64 = ptrtoint ptr %asiu_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %asiu_base, align 4
  %66 = ptrtoint ptr %asiu to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %asiu, align 4
  %68 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ctrl1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 @llvm.bswap.i32(i32 %or49) #8
  %add.ptr.i14 = getelementptr i8, ptr %65, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %70) #8, !srcloc !43
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %69, align 4
  %and.i15 = and i32 %72, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %if.then39.if.end53_crit_edge, label %land.rhs.i18

if.then39.if.end53_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

land.rhs.i18:                                     ; preds = %if.then39
  %73 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pll, align 4
  %cmp.i17 = icmp eq ptr %74, %65
  br i1 %cmp.i17, label %land.rhs.i18.if.then.i22_crit_edge, label %lor.rhs.i21

land.rhs.i18.if.then.i22_crit_edge:               ; preds = %land.rhs.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i22

lor.rhs.i21:                                      ; preds = %land.rhs.i18
  %control_base.i19 = getelementptr inbounds %struct.iproc_pll, ptr %pll, i32 0, i32 1
  %75 = ptrtoint ptr %control_base.i19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %control_base.i19, align 4
  %cmp2.i20 = icmp eq ptr %76, %65
  br i1 %cmp2.i20, label %lor.rhs.i21.if.then.i22_crit_edge, label %lor.rhs.i21.if.end53_crit_edge, !prof !39

lor.rhs.i21.if.end53_crit_edge:                   ; preds = %lor.rhs.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

lor.rhs.i21.if.then.i22_crit_edge:                ; preds = %lor.rhs.i21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i22

if.then.i22:                                      ; preds = %lor.rhs.i21.if.then.i22_crit_edge, %land.rhs.i18.if.then.i22_crit_edge
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %if.end53

if.end53:                                         ; preds = %if.then.i22, %lor.rhs.i21.if.end53_crit_edge, %if.then39.if.end53_crit_edge, %if.end35.if.end53_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_clk_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %pll2 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll2, align 4
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_base, align 4
  %enable = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  %enable_shift = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %enable_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enable_shift, align 4
  %shl = shl nuw i32 1, %11
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %12 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %control_base, align 4
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable, align 4
  %ctrl1.i = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %add.ptr.i = getelementptr i8, ptr %13, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #8, !srcloc !43
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %17, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.iproc_pll_write.exit_crit_edge, label %land.rhs.i

entry.iproc_pll_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit

land.rhs.i:                                       ; preds = %entry
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %cmp.i = icmp eq ptr %22, %13
  br i1 %cmp.i, label %land.rhs.i.if.then.i_crit_edge, label %lor.rhs.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %23 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %control_base, align 4
  %cmp2.i = icmp eq ptr %24, %13
  br i1 %cmp2.i, label %lor.rhs.i.if.then.i_crit_edge, label %lor.rhs.i.iproc_pll_write.exit_crit_edge, !prof !39

lor.rhs.i.iproc_pll_write.exit_crit_edge:         ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit

iproc_pll_write.exit:                             ; preds = %if.then.i, %lor.rhs.i.iproc_pll_write.exit_crit_edge, %entry.iproc_pll_write.exit_crit_edge
  %26 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %control_base, align 4
  %28 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enable, align 4
  %add.ptr15 = getelementptr i8, ptr %27, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !40
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !70
  %hold_shift = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 2, i32 2
  %32 = ptrtoint ptr %hold_shift to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hold_shift, align 4
  %shl20 = shl nuw i32 1, %33
  %neg21 = xor i32 %shl20, -1
  %and22 = and i32 %31, %neg21
  %34 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %control_base, align 4
  %36 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %enable, align 4
  %38 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctrl1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %and22) #8
  %add.ptr.i41 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i41, i32 %40) #8, !srcloc !43
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %39, align 4
  %and.i42 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i43 = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i43, label %iproc_pll_write.exit.iproc_pll_write.exit50_crit_edge, label %land.rhs.i45

iproc_pll_write.exit.iproc_pll_write.exit50_crit_edge: ; preds = %iproc_pll_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit50

land.rhs.i45:                                     ; preds = %iproc_pll_write.exit
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 4
  %cmp.i44 = icmp eq ptr %44, %35
  br i1 %cmp.i44, label %land.rhs.i45.if.then.i49_crit_edge, label %lor.rhs.i48

land.rhs.i45.if.then.i49_crit_edge:               ; preds = %land.rhs.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i49

lor.rhs.i48:                                      ; preds = %land.rhs.i45
  %45 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %control_base, align 4
  %cmp2.i47 = icmp eq ptr %46, %35
  br i1 %cmp2.i47, label %lor.rhs.i48.if.then.i49_crit_edge, label %lor.rhs.i48.iproc_pll_write.exit50_crit_edge, !prof !39

lor.rhs.i48.iproc_pll_write.exit50_crit_edge:     ; preds = %lor.rhs.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %iproc_pll_write.exit50

lor.rhs.i48.if.then.i49_crit_edge:                ; preds = %lor.rhs.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i49

if.then.i49:                                      ; preds = %lor.rhs.i48.if.then.i49_crit_edge, %land.rhs.i45.if.then.i49_crit_edge
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %iproc_pll_write.exit50

iproc_pll_write.exit50:                           ; preds = %if.then.i49, %lor.rhs.i48.iproc_pll_write.exit50_crit_edge, %iproc_pll_write.exit.iproc_pll_write.exit50_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_clk_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %flags = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll2 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll2, align 4
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control_base, align 4
  %enable = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #8, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  %enable_shift = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %enable_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_shift, align 4
  %shl = shl nuw i32 1, %13
  %or = or i32 %shl, %11
  %14 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %control_base, align 4
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable, align 4
  %ctrl1.i = getelementptr inbounds %struct.iproc_pll, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !43
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  %and.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.rhs.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %5, align 4
  %cmp.i = icmp eq ptr %24, %15
  br i1 %cmp.i, label %land.rhs.i.if.then.i_crit_edge, label %lor.rhs.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %25 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %control_base, align 4
  %cmp2.i = icmp eq ptr %26, %15
  br i1 %cmp2.i, label %lor.rhs.i.if.then.i_crit_edge, label %lor.rhs.i.cleanup_crit_edge, !prof !39

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.rhs.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp = icmp eq i32 %parent_rate, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pll2 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll2, align 4
  %ctrl1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl1, align 4
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control_base, align 4
  %mdiv3 = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %mdiv3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdiv3, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  %shift = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shift, align 4
  %shr = lshr i32 %9, %11
  %width = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %13
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  %spec.store.select = select i1 %cmp9, i32 256, i32 %and
  %flags = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and12 = lshr i32 %15, 7
  %and12.lobit = and i32 %and12, 1
  %mul.pn = shl i32 %spec.store.select, %and12.lobit
  %rate.0 = udiv i32 %parent_rate, %mul.pn
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rate.0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iproc_clk_determine_rate(ptr nocapture noundef readnone %hw, ptr nocapture noundef %req) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %best_parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp2 = icmp eq i32 %1, %3
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div31 = lshr i32 %1, 1
  %add = add i32 %3, %div31
  %div7 = udiv i32 %add, %1
  %4 = tail call i32 @llvm.umin.i32(i32 %div7, i32 256)
  %div17 = udiv i32 %3, %4
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div17, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl1 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl1, align 4
  %pll2 = getelementptr inbounds %struct.iproc_clk, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %pll2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %cmp3 = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %div561 = lshr i32 %rate, 1
  %add = add i32 %div561, %parent_rate
  %div6 = udiv i32 %add, %rate
  %flags = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = lshr i32 %5, 7
  %and.lobit = and i32 %and, 1
  %spec.select = lshr i32 %div6, %and.lobit
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select)
  %cmp10 = icmp ugt i32 %spec.select, 256
  br i1 %cmp10, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %control_base = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control_base, align 4
  %mdiv = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mdiv, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 %9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #8, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %spec.select)
  %cmp16 = icmp eq i32 %spec.select, 256
  %width = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %notmask62 = shl nsw i32 -1, %13
  %sub = xor i32 %notmask62, -1
  %shift = getelementptr inbounds %struct.iproc_clk_ctrl, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shift, align 4
  %shl20 = shl i32 %sub, %15
  %neg = xor i32 %shl20, -1
  %and21 = and i32 %11, %neg
  %shl33 = shl i32 %spec.select, %15
  %or = select i1 %cmp16, i32 0, i32 %shl33
  %val.0 = or i32 %and21, %or
  %16 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %control_base, align 4
  %18 = ptrtoint ptr %mdiv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdiv, align 4
  %ctrl1.i = getelementptr inbounds %struct.iproc_pll, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %ctrl1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctrl1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !42
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %add.ptr.i = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #8, !srcloc !43
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %21, align 4
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.cleanup_crit_edge, label %land.rhs.i

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i:                                       ; preds = %if.end12
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %3, align 4
  %cmp.i = icmp eq ptr %26, %17
  br i1 %cmp.i, label %land.rhs.i.if.then.i_crit_edge, label %lor.rhs.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  %27 = ptrtoint ptr %control_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %control_base, align 4
  %cmp2.i = icmp eq ptr %28, %17
  br i1 %cmp2.i, label %lor.rhs.i.if.then.i_crit_edge, label %lor.rhs.i.cleanup_crit_edge, !prof !39

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.rhs.i.if.then.i_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.rhs.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.rhs.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 740, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 814, i32 45}
!4 = !{ptr @iproc_pll_ops, !5, !"iproc_pll_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 577, i32 29}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 347, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pll_set_rate._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @pll_set_rate._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 354, i32 3}
!13 = !{ptr @pll_set_rate._entry.4, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @pll_set_rate._entry_ptr.6, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 360, i32 3}
!17 = !{ptr @pll_set_rate._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @pll_set_rate._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 430, i32 3}
!21 = !{ptr @pll_set_rate._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @pll_set_rate._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"ref_freq_table", i1 false, i1 false}
!24 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 53, i32 28}
!25 = !{ptr @kp_table, !26, !"kp_table", i1 false, i1 false}
!26 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 47, i32 27}
!27 = !{ptr @iproc_clk_ops, !28, !"iproc_clk_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/bcm/clk-iproc-pll.c", i32 699, i32 29}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 4047463}
!41 = !{i64 2152972768}
!42 = !{i64 2152928956}
!43 = !{i64 4047045}
!44 = !{i64 2152929814}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2152930450}
!47 = !{i64 2152931094}
!48 = !{i64 2152931681}
!49 = !{i64 2152952741}
!50 = !{i64 2152953323}
!51 = !{i64 2152954033}
!52 = !{i64 2152954642}
!53 = !{i64 2152936904}
!54 = !{i64 2152937486}
!55 = !{i64 2152938094}
!56 = !{i64 2152943718}
!57 = !{i64 2152934180}
!58 = !{i64 2152944433}
!59 = !{i64 2152945069}
!60 = !{i64 2152945660}
!61 = !{i64 2152946370}
!62 = !{i64 2152946979}
!63 = !{i64 2152935204}
!64 = !{i64 2152935880}
!65 = !{i64 2152928202}
!66 = !{i64 2152932366}
!67 = !{i64 2152932953}
!68 = !{i64 2152933630}
!69 = !{i64 2152965315}
!70 = !{i64 2152965889}
!71 = !{i64 2152967700}
!72 = !{i64 2152969421}
!73 = !{i64 2152972032}
